<script>
    import { onMount } from "svelte";
    let searchTerm = "";
    const categories = [
      { name: "Alcohol", img: "images/alcohol.jpeg", color: "bg-blue-800" },
      { name: "Non-Alcohol", img: "images/sweet.jpeg", color: "bg-yellow-800" },
      { name: "Tobacco", img: "images/tabak.jpeg", color: "bg-gray-600" },
      { name: "Snack", img: "images/snacks.jpeg", color: "bg-purple-800" },
      { name: "CBD", img: "images/cbd.jpeg", color: "bg-green-700" },
    ];
  
    const products = [
      // Pridajte produkty tu podľa potreby
    ];
  </script>

  <!-- Categories Section -->
  <div class="py-5 px-20 bg-gray-800 text-white">
    <h2 class="text-4xl font-bold text-center mb-5 text-yellow-400">Categories</h2>
    <div class="flex flex-wrap justify-center space-x-4">
      {#each categories as category}
        <div class="w-40 p-5 text-center shadow-lg border-2 border-yellow-400 rounded-lg cursor-pointer transition-transform transform hover:scale-105">
          <img src={category.img} alt={category.name} class="w-full mb-2 rounded-lg" />
          <h6 class="text-sm font-bold {category.color} py-2 rounded-md">{category.name}</h6>
        </div>
      {/each}
    </div>
</div>
  
  <!-- Search Bar -->
  <div class="flex justify-center py-8 bg-gray-700">
    <form class="relative w-full max-w-md">
      <input type="text" bind:value={searchTerm} placeholder="Search products" class="w-full p-2 pl-10 rounded-md text-gray-700" />
      <i class="fas fa-search absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-500"></i>
    </form>
  </div>
