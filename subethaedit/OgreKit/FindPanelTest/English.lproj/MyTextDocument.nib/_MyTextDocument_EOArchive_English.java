// _MyTextDocument_EOArchive_English.java
// Generated by EnterpriseObjects palette at 2004\u5e746\u670818\u65e5\u91d1\u66dc\u65e5 22\u664234\u520624\u79d2Asia/Tokyo

import com.webobjects.eoapplication.*;
import com.webobjects.eocontrol.*;
import com.webobjects.eointerface.*;
import com.webobjects.eointerface.swing.*;
import com.webobjects.foundation.*;
import java.awt.*;
import javax.swing.*;
import javax.swing.border.*;
import javax.swing.table.*;
import javax.swing.text.*;

public class _MyTextDocument_EOArchive_English extends com.webobjects.eoapplication.EOArchive {
    ObjectController _objectController0;
    com.webobjects.eointerface.swing.EOFrame _eoFrame0;
    com.webobjects.eointerface.swing.EOTextArea _nsTextView0;
    javax.swing.JPanel _nsView0;

    public _MyTextDocument_EOArchive_English(Object owner, NSDisposableRegistry registry) {
        super(owner, registry);
    }

    protected void _construct() {
        Object owner = _owner();
        EOArchive._ObjectInstantiationDelegate delegate = (owner instanceof EOArchive._ObjectInstantiationDelegate) ? (EOArchive._ObjectInstantiationDelegate)owner : null;
        Object replacement;

        super._construct();


        if ((delegate != null) && ((replacement = delegate.objectForOutletPath(this, "myController")) != null)) {
            _objectController0 = (replacement == EOArchive._ObjectInstantiationDelegate.NullObject) ? null : (ObjectController)replacement;
            _replacedObjects.setObjectForKey(replacement, "_objectController0");
        } else {
            _objectController0 = (ObjectController)_registered(new ObjectController(), "MyObjectController");
        }

        if ((delegate != null) && ((replacement = delegate.objectForOutletPath(this, "textView")) != null)) {
            _nsTextView0 = (replacement == EOArchive._ObjectInstantiationDelegate.NullObject) ? null : (com.webobjects.eointerface.swing.EOTextArea)replacement;
            _replacedObjects.setObjectForKey(replacement, "_nsTextView0");
        } else {
            _nsTextView0 = (com.webobjects.eointerface.swing.EOTextArea)_registered(new com.webobjects.eointerface.swing.EOTextArea(), "NSTextView");
        }

        if ((delegate != null) && ((replacement = delegate.objectForOutletPath(this, "window")) != null)) {
            _eoFrame0 = (replacement == EOArchive._ObjectInstantiationDelegate.NullObject) ? null : (com.webobjects.eointerface.swing.EOFrame)replacement;
            _replacedObjects.setObjectForKey(replacement, "_eoFrame0");
        } else {
            _eoFrame0 = (com.webobjects.eointerface.swing.EOFrame)_registered(new com.webobjects.eointerface.swing.EOFrame(), "Window");
        }

        _nsView0 = (JPanel)_eoFrame0.getContentPane();
    }

    protected void _awaken() {
        super._awaken();

        if (_replacedObjects.objectForKey("_eoFrame0") == null) {
            _connect(_eoFrame0, _owner(), "delegate");
        }

        if (_replacedObjects.objectForKey("_objectController0") == null) {
            _connect(_objectController0, _owner(), "content");
        }

        if (_replacedObjects.objectForKey("_objectController0") == null) {
            _connect(_owner(), _objectController0, "myController");
        }

        if (_replacedObjects.objectForKey("_eoFrame0") == null) {
            _connect(_owner(), _eoFrame0, "window");
        }

        if (_replacedObjects.objectForKey("_nsTextView0") == null) {
            _connect(_owner(), _nsTextView0, "textView");
        }
    }

    protected void _init() {
        super._init();

        if (_replacedObjects.objectForKey("_nsTextView0") == null) {
            _nsTextView0.setEditable(true);
            _nsTextView0.setOpaque(true);
            _nsTextView0.setText("");
        }

        if (!(_nsView0.getLayout() instanceof EOViewLayout)) { _nsView0.setLayout(new EOViewLayout()); }
        _nsTextView0.setSize(480, 340);
        _nsTextView0.setLocation(-7, -6);
        ((EOViewLayout)_nsView0.getLayout()).setAutosizingMask(_nsTextView0, EOViewLayout.WidthSizable | EOViewLayout.HeightSizable);
        _nsView0.add(_nsTextView0);

        if (_replacedObjects.objectForKey("_eoFrame0") == null) {
            _nsView0.setSize(466, 348);
            _eoFrame0.setTitle("Window");
            _eoFrame0.setLocation(199, 330);
            _eoFrame0.setSize(466, 348);
        }
    }
}
