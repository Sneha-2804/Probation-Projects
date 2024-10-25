document.addEventListener("DOMContentLoaded", () => {
    const taskInput = document.getElementById("task-input");
    const addTaskButton = document.getElementById("add-task");
    const taskList = document.getElementById("task-list");

    addTaskButton.addEventListener("click", addTask);
    taskInput.addEventListener("keypress", (e) => {
        if (e.key === "Enter") {
            addTask();
        }
    });

    function addTask() {
        const taskText = taskInput.value.trim();
        if (taskText) {
            const li = document.createElement("li");
            li.textContent = taskText;

            const deleteButton = document.createElement("button");
            deleteButton.textContent = "Delete";
            deleteButton.classList.add("delete-btn");
            deleteButton.addEventListener("click", () => {
                li.classList.add("fade-out");
                setTimeout(() => li.remove(), 300);
            });

            li.appendChild(deleteButton);
            li.addEventListener("click", () => {
                li.classList.toggle("completed");
            });

            taskList.appendChild(li);
            taskInput.value = ""; 
        }
    }
});
