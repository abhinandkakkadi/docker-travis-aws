FROM golang:latest as builder

WORKDIR /app

COPY go.mod .
RUN go mod download

COPY . .

RUN go build -o /go-sample

# # Final stage
# FROM golang:alpine

# # Copy the Go application binary to the final image
# COPY --from=builder /go-sample /app/go-sample

# # Set the working directory for the Go application
# WORKDIR /app

# # Expose the port on which your Go application will run
# # this will be used by elastic beanstalk
# EXPOSE 80

# Command to run your Go application
CMD ["./go-sample"]