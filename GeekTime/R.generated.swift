//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.image` struct is generated, and contains static references to 19 images.
  struct image {
    /// Image `book`.
    static let book = Rswift.ImageResource(bundle: R.hostingBundle, name: "book")
    /// Image `defaultAvatar`.
    static let defaultAvatar = Rswift.ImageResource(bundle: R.hostingBundle, name: "defaultAvatar")
    /// Image `detailBg`.
    static let detailBg = Rswift.ImageResource(bundle: R.hostingBundle, name: "detailBg")
    /// Image `home_selected`.
    static let home_selected = Rswift.ImageResource(bundle: R.hostingBundle, name: "home_selected")
    /// Image `home`.
    static let home = Rswift.ImageResource(bundle: R.hostingBundle, name: "home")
    /// Image `icon_between`.
    static let icon_between = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_between")
    /// Image `icon_cal`.
    static let icon_cal = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cal")
    /// Image `icon_column`.
    static let icon_column = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_column")
    /// Image `icon_course`.
    static let icon_course = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_course")
    /// Image `icon_document`.
    static let icon_document = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_document")
    /// Image `icon_life`.
    static let icon_life = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_life")
    /// Image `icon_live`.
    static let icon_live = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_live")
    /// Image `icon_phone`.
    static let icon_phone = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_phone")
    /// Image `icon_pwd`.
    static let icon_pwd = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_pwd")
    /// Image `icon_right_arrow`.
    static let icon_right_arrow = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_right_arrow")
    /// Image `logo`.
    static let logo = Rswift.ImageResource(bundle: R.hostingBundle, name: "logo")
    /// Image `mine_selected`.
    static let mine_selected = Rswift.ImageResource(bundle: R.hostingBundle, name: "mine_selected")
    /// Image `mine`.
    static let mine = Rswift.ImageResource(bundle: R.hostingBundle, name: "mine")
    /// Image `student`.
    static let student = Rswift.ImageResource(bundle: R.hostingBundle, name: "student")
    
    /// `UIImage(named: "book", bundle: ..., traitCollection: ...)`
    static func book(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.book, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "defaultAvatar", bundle: ..., traitCollection: ...)`
    static func defaultAvatar(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.defaultAvatar, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "detailBg", bundle: ..., traitCollection: ...)`
    static func detailBg(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.detailBg, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "home", bundle: ..., traitCollection: ...)`
    static func home(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.home, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "home_selected", bundle: ..., traitCollection: ...)`
    static func home_selected(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.home_selected, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_between", bundle: ..., traitCollection: ...)`
    static func icon_between(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_between, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_cal", bundle: ..., traitCollection: ...)`
    static func icon_cal(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cal, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_column", bundle: ..., traitCollection: ...)`
    static func icon_column(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_column, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_course", bundle: ..., traitCollection: ...)`
    static func icon_course(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_course, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_document", bundle: ..., traitCollection: ...)`
    static func icon_document(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_document, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_life", bundle: ..., traitCollection: ...)`
    static func icon_life(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_life, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_live", bundle: ..., traitCollection: ...)`
    static func icon_live(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_live, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_phone", bundle: ..., traitCollection: ...)`
    static func icon_phone(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_phone, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_pwd", bundle: ..., traitCollection: ...)`
    static func icon_pwd(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_pwd, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_right_arrow", bundle: ..., traitCollection: ...)`
    static func icon_right_arrow(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_right_arrow, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "logo", bundle: ..., traitCollection: ...)`
    static func logo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.logo, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "mine", bundle: ..., traitCollection: ...)`
    static func mine(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.mine, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "mine_selected", bundle: ..., traitCollection: ...)`
    static func mine_selected(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.mine_selected, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "student", bundle: ..., traitCollection: ...)`
    static func student(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.student, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try launchScreen.validate()
      try main.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = ViewController
      
      let bundle = R.hostingBundle
      let name = "Main"
      let tab = StoryboardViewControllerResource<ViewController>(identifier: "Tab")
      
      func tab(_: Void = ()) -> ViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: tab)
      }
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
        if _R.storyboard.main().tab() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'tab' could not be loaded from storyboard 'Main' as 'ViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
