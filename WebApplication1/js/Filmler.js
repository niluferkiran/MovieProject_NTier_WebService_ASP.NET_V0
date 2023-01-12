var container = document.body.querySelector(".container");

var star = "<i class='fa-solid fa-star'></i>";
var starColor = "<i class='fa-solid fa-star star-color'></i>";

let movies = [
    {
        image: "https://wondersinthedark.files.wordpress.com/2016/09/godzilla-breath.jpg?w=500",
        gif: "https://i.gifer.com/89N9.gif",
        name: "Gojira",
        release: "1954",
        genre: "Kaiju, Horror",
        synopsis: "A fire-breathing behemoth terrorizes Japan after an atomic bomb awakens it from its centuries-old sleep.",
        rating: 5,
        link: "https://en.wikipedia.org/wiki/Godzilla_(1954_film)"
    },
    {
        image: "https://ychef.files.bbci.co.uk/976x549/p09f3lcg.jpg",
        gif: "https://img.nickpic.host/AihrPF.gif",
        name: "Spirited Away",
        release: "2001",
        genre: "Fantasy, Adventure",
        synopsis: "During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.",
        rating: 5,
        link: "https://en.wikipedia.org/wiki/Spirited_Away"
    },
    {
        image: "https://m.media-amazon.com/images/M/MV5BN2FiZDUxZTMtMzUxMi00NzYxLTg0NzEtNzViYTY4N2Y2MWFjXkEyXkFqcGdeQW1yb3NzZXI@._V1_QL75_UY281_CR81,0,500,281_.jpg",
        gif: "https://img.nickpic.host/uMUaWO.gif",
        name: "How to Train Your Dragon",
        release: "2010",
        genre: "Action, Fantasy",
        synopsis: "A young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon, and learns there may be more to the creatures than he assumed.",
        rating: 4,
        link: "https://en.wikipedia.org/wiki/How_to_Train_Your_Dragon_(film)"
    },
    {
        image: "https://img.nickpic.host/uMV1pP.jpg",
        gif: "https://media1.giphy.com/media/Lp71UWmAAeJHi/giphy.gif",
        name: "The Lion King",
        release: "1994",
        genre: "Musical, Family",
        synopsis: "After the murder of his father, a young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.",
        rating: 4,
        link: "https://en.wikipedia.org/wiki/The_Lion_King"
    },
    {
        image: "https://www.highbrowmagazine.com/sites/default/files/2gatsby.jpg",
        gif: "https://media2.giphy.com/media/u4CY9BW4umAfu/200.gif",
        name: "The Great Gatsby",
        release: "2013",
        genre: "Romance, Drama",
        synopsis: "A writer and wall street trader, Nick, finds himself drawn to the past and lifestyle of his millionaire neighbor, Jay Gatsby.",
        rating: 4,
        link: "https://en.wikipedia.org/wiki/The_Great_Gatsby_(2013_film)"
    },
    {
        image: "https://imageio.forbes.com/blogs-images/scottmendelson/files/2019/05/MV5BMmI4MGU5ZDItNDQ0OS00ODliLTg3ODYtNTgzZmU0YWViYzBmXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SY739_CR001776739_AL_-1200x675.jpg?fit=bounds&format=jpg&width=960",
        gif: "https://data.whicdn.com/images/327242561/original.gif",
        name: "Detective Pikachu",
        release: "2019",
        genre: "Mystery, Fantasy",
        synopsis: "The plot follows a former Pokémon trainer Tim Goodman and the Pokémon creatures as they attempt to solve the mysterious disappearance of Tim's father, Harry.",
        rating: 3,
        link: "https://en.wikipedia.org/wiki/Detective_Pikachu_(film)"
    },
    {
        image: "https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2015/3/26/1427386189440/2b2cbcde-911d-4dfd-92b0-6d9b7427019c-2060x1236.jpeg?width=465&quality=45&auto=format&fit=max&dpr=2&s=e9643208fdf1f246941b76cc7625aebf",
        gif: "https://img.nickpic.host/uMfqPb.gif",
        name: "Sharknado",
        release: "2013",
        genre: "Horror, Sci-Fi",
        synopsis: "Nature's deadliest killer takes to the skies in the ultimate gill-ty pleasure as a group of friends try to save the Santa Monica coast from shark-infested tornadoes.",
        rating: 2,
        link: "https://en.wikipedia.org/wiki/Sharknado"
    },
    {
        image: "https://www.mercurynews.com/wp-content/uploads/2016/08/20100427_043841_birdemicfirst.jpg?w=300",
        gif: "https://c.tenor.com/VHKKqyobURsAAAAC/birdemic-attack.gif",
        name: "Birdemic: Shock and Terror",
        release: "2010",
        genre: "Horror, Thriller",
        synopsis: "The story of a romance between a lingerie model and a software salesman as their small town is attacked by birds.",
        rating: 1,
        link: "https://en.wikipedia.org/wiki/Birdemic:_Shock_and_Terror"
    },
];

for (movie in movies) { // for each object named "movie" in the movies list, run this code
    let that = this;

    this.ele = document.createElement("div");
    this.ele.classList.add("movie");

    this.eleImage = document.createElement("div");
    this.eleImage.classList.add("movie_image");
    this.eleImage.style.backgroundImage = "url(" + movies[movie].image + ")";

    this.eleGif = document.createElement("div");
    this.eleGif.classList.add("movie_gif");
    this.eleGif.style.backgroundImage = "url(" + movies[movie].gif + ")";

    this.movieContain = document.createElement("div");
    this.movieContain.classList.add("movie_container");

    this.eleName = document.createElement("h1");
    this.eleName.classList.add("movie_name");
    this.eleName.innerHTML = movies[movie].name;

    this.eleGenre = document.createElement("h3");
    this.eleGenre.classList.add("movie_genre");
    this.eleGenre.innerHTML = movies[movie].genre;

    this.eleRelease = document.createElement("h4");
    this.eleRelease.classList.add("movie_release");
    this.eleRelease.innerHTML = movies[movie].release;

    this.eleGenRe = document.createElement("div");
    this.eleGenRe.classList.add("movie_genre-release");

    this.eleSynopsis = document.createElement("p");
    this.eleSynopsis.classList.add("movie_synopsis");
    this.eleSynopsis.innerHTML = movies[movie].synopsis;

    this.eleLink = document.createElement("a");
    this.eleLink.classList.add("movie_link");
    this.eleLink.href = movies[movie].link;
    this.eleLink.setAttribute("target", "_blank");
    this.eleLink.innerHTML = "Watch now";

    this.eleRating = document.createElement("div");
    this.eleRating.classList.add("movie_rating");
    if (movies[movie].rating == 1) {
        that.eleRating.innerHTML = starColor + star + star + star + star;
    } else if (movies[movie].rating == 2) {
        that.eleRating.innerHTML = starColor + starColor + star + star + star;
    } else if (movies[movie].rating == 3) {
        that.eleRating.innerHTML = starColor + starColor + starColor + star + star;
    } else if (movies[movie].rating == 4) {
        that.eleRating.innerHTML = starColor + starColor + starColor + starColor + star;
    } else if (movies[movie].rating == 5) {
        that.eleRating.innerHTML = starColor + starColor + starColor + starColor + starColor;
    }

    container.appendChild(this.ele);
    this.ele.append(this.eleImage, this.eleGif, this.movieContain, this.eleLink, this.eleRating);
    this.movieContain.append(this.eleName, this.eleGenRe, this.eleSynopsis);
    this.eleGenRe.append(this.eleGenre, this.eleRelease);
}