//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track {
    let trackName: String
    let artistName: String
    let artworkUrl100: URL
    // Detail properties
    let collectionName: String
    let primaryGenreName: String
    let releaseDate: String
    let trackTimeMillis: Int
}


// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {

    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(trackName: "M3GAN",
              artistName: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.",
              artworkUrl100: URL(string:"https://www.themoviedb.org/t/p/w1280/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg")!,
             collectionName: "7.5",
             primaryGenreName: "1153",
              releaseDate: "2",
              trackTimeMillis: 157705),
        Track(trackName: "Wondering Earth 2",
              artistName: "Humans built huge engines on the surface of the earth to find a new home. But the road to the universe is perilous. In order to save earth, young people once again have to step forward to start a race against time for life and death.",
              artworkUrl100: URL(string: "https://www.themoviedb.org/t/p/w1280/pIxhcMeAd7ch1g8eFM2o4xQrkAy.jpg")!,
              collectionName: "7.9",
              primaryGenreName: "10",
               releaseDate: "96",
               trackTimeMillis: 157705),
        Track(trackName: "House Party",
              artistName: "Aspiring club promoters and best buds Damon and Kevin are barely keeping things together. Out of money, down on their luck and about to lose the roofs over their heads—and freshly fired from their low-lift jobs as house cleaners—the pair needs a huge windfall to make their problems go away.",
              artworkUrl100: URL(string: "https://www.themoviedb.org/t/p/w1280/KiyKR9m6h01eIvGObGmpt16U3F.jpg")!,
              collectionName: "7.2",
              primaryGenreName: "10",
               releaseDate: "104",
               trackTimeMillis: 157705),
        Track(trackName: "Pathaan",
              artistName: "A soldier caught by enemies and presumed dead comes back to complete his mission, accompanied by old companions and foes.",
              artworkUrl100: URL(string: "https://www.themoviedb.org/t/p/w1280/m1b9toKYyCujHuLoXB5GSDunO9e.jpg")!,
              collectionName: "8.1",
              primaryGenreName: "9",
               releaseDate: "107",
               trackTimeMillis: 157705),
        Track(trackName: "Knock at the Cabin",
              artistName: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
              artworkUrl100: URL(string: "https://www.themoviedb.org/t/p/w1280/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!,
              collectionName: "6.7",
              primaryGenreName: "6",
               releaseDate: "108",
               trackTimeMillis: 157705)
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
