//
//  InsulinModelSettings+Loop.swift
//  Loop
//
//  Copyright © 2019 LoopKit Authors. All rights reserved.
//

import LoopCore
import LoopKit


extension InsulinModelSettings {
    var title: String {
        switch self {
        case .exponentialPreset(let model):
            return model.title
        case .walsh(let model):
            return model.title
        }
    }
}


extension ExponentialInsulinModelPreset {
    var title: String {
        switch self {
        case .humalogNovologAdult:
            return NSLocalizedString("Novolog (6 hr.)", comment: "Title of insulin model preset")
        case .humalogNovologChild:
            return NSLocalizedString("Novolog (5 hr.)", comment: "Title of insulin model preset")
        case .fiasp:
            return NSLocalizedString("Fiasp", comment: "Title of insulin model preset")
        }
    }

    var subtitle: String? {
        switch self {
        case .humalogNovologAdult:
            return NSLocalizedString("A model based on the published absorption of Humalog, Novolog, and Apidra insulin in adults.", comment: "Subtitle of Rapid-Acting – Adult preset")
        case .humalogNovologChild:
            return NSLocalizedString("An adjustment to the published absorption model with a 5-hour DIA (Duration of Insulin Action).", comment: "Subtitle of Rapid-Acting – Children preset")
        case .fiasp:
            return NSLocalizedString("A model based on the published absorption of Fiasp insulin.", comment: "Subtitle of Fiasp preset")
        }
    }
}


extension WalshInsulinModel {
    var title: String {
        return NSLocalizedString("Walsh", comment: "Title of insulin model setting")
    }

    var subtitle: String {
        return NSLocalizedString("The legacy model used by Loop, allowing customization of action duration.", comment: "Subtitle description of Walsh insulin model setting")
    }
}
