# builds base image 
FROM ubuntu AS build

# updates all files and install all runtime and dependencies
RUN apt-get update && apt-get install -y golang-go

# sets environment variables for golang app to run
ENV GO111MODULE=off

# copies all files and folders
COPY . .

# runs the build command that builds docker images
RUN CGO_ENABLED=0 go build -o /app .

# Multi stage build that helps reduce image size and optimize overall 
# here scratch gives the most minimun image size after the build and we can obtain like 1.9mb something like less image size
# than actual build when the build is done without multi-staging
FROM scratch

# Copy the compiled binary from the build stage
COPY --from=build /app /app

# Set the entrypoint for the container to run the binary
ENTRYPOINT ["/app"]
