const $modal = document.getElementById("passwordChangeModal");
const $modalBtn = document.getElementById("passwordChangeModalBtn");
const $closeModelBtn = document.getElementById("passwordChangeModalCloseBtn");

$modalBtn.addEventListener("click", () => {
	$modal.classList.remove("hidden");
});
$closeModelBtn.addEventListener("click", () => {
	$modal.classList.add("hidden");
});
