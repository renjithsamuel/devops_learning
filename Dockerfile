# Step 1: Use a lightweight Node.js base image
FROM node:18-alpine

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install --production

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Expose the port your application runs on (default for Express is 3000)
EXPOSE 80

ENV TaskReporter_DBNAME=ranjithsamuelking
ENV TaskReporter_DBPASSWORD=Samking123
ENV PORT=80

# Step 7: Specify the command to run your app
CMD ["node", "app.js"]
