# Use the official SRS image as the base image
FROM ossrs/srs:5

# Set environment variable
ARG CANDIDATE
ENV CANDIDATE=${CANDIDATE}

# Copy the configuration file into the container
COPY rtmp2rtc.conf /usr/local/srs/conf/rtmp2rtc.conf

# Expose the necessary ports
EXPOSE 1935 1985 8080 1990 8088 8000/udp

# Command to run SRS with the specified configuration file
CMD ["./objs/srs", "-c", "conf/rtmp2rtc.conf"]
