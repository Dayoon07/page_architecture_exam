const $closeBtn = document.getElementById("closeDashboardModalBtn");
const $modalContainer = document.getElementById("dashboardModal");
const $modal = document.getElementById("dashboardPopup");
function openDashboardModal() {
    $modalContainer.classList.remove("hidden");
    $modal.classList.remove("hidden");
}
$closeBtn.addEventListener("click", () => {
    $modalContainer.classList.add("hidden");
    $modal.classList.add("hidden");
});