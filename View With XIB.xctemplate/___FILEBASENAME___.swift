//  ___FILEHEADER___

import UIKit

protocol ___FILEBASENAME___Delegate: class {
    
}

class ___FILEBASENAME___: UIView {
    weak var delegate: ___FILEBASENAME___Delegate?
    private var view:UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setupView()
    }
    
    private func setupView() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [ .flexibleHeight, .flexibleWidth]
        addSubview(view)
    }
    
    private func loadViewFromNib() -> UIView {
        let bundle = Bundle(for:type(of: self))
        let nib = UINib(nibName: "___FILEBASENAME___" , bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
}
