const searchBtn = document.getElementById('search-btn');
const pokemonInput = document.getElementById('pokemon-input');
const errorMsg = document.getElementById('error-message');
const pokeCard = document.getElementById('pokemon-card');

const pokeName = document.getElementById('poke-name');
const pokeImg = document.getElementById('poke-img');
const pokeTypes = document.getElementById('poke-types');
const pokeWeight = document.getElementById('poke-weight');
const pokeHeight = document.getElementById('poke-height');

searchBtn.addEventListener('click', searchPokemon);

async function searchPokemon() {
    const query = pokemonInput.value.trim().toLowerCase();
    errorMsg.innerText = '';
    pokeCard.classList.add('hidden');

    if (!query) {
        errorMsg.innerText = 'Por favor, ingresa el nombre o ID de un Pokémon.';
        return;
    }

    try {
        const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${query}`);
        
        if (!response.ok) {
            throw new Error('Pokémon no encontrado. Verifica el nombre o ID.');
        }

        const data = await response.json();

        // Cargar datos
        pokeName.innerText = data.name;
        pokeImg.src = data.sprites.front_default;
        pokeTypes.innerText = data.types.map(t => t.type.name).join(', ');
        
        // Conversiones requeridas por la guía: hectogramos -> kg / decímetros -> m
        pokeWeight.innerText = (data.weight / 10).toFixed(1);
        pokeHeight.innerText = (data.height / 10).toFixed(1);

        pokeCard.classList.remove('hidden');
    } catch (error) {
        errorMsg.innerText = error.message;
    }
}