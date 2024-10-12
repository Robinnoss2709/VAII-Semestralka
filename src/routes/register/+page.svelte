<script>
    let email = ''
    let password = ''
    let confirmPassword = ''
</script>

<div class="flex flex-col justify-center items-center text-slate-950">
    <h1 class="font-bold uppercase text-yellow-400">Sign up</h1>
    <form class="flex flex-col gap-2">
        <label>
            <input bind:value={email} type="text" placeholder="Email" class="py-1 px-1 border border-solid border-yellow-400 rounded-md">
        </label>
        <label>
            <input bind:value={password} type="password" placeholder="Password" class="py-1 px-1 border border-solid border-yellow-400 rounded-md">
        </label>
        <label>
            <input bind:value={confirmPassword} type="password" placeholder="Confirm Password" class="py-1 px-1 border border-solid border-yellow-400 rounded-md">
        </label>
        <button class="py-1 px-3 rounded-xl border-2 border-transparent hover:border-yellow-400 hover:text-yellow-400">
            Submit
        </button>
    </form>

</div>