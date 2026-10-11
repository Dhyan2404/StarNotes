package org.apache.wml.dom;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.util.Hashtable;
import org.apache.poi.util.ExtUnits;
import org.apache.wml.WMLDocument;
import org.apache.xerces.dom.DocumentImpl;
import org.apache.xerces.dom.ElementImpl;
import org.w3c.dom.DOMException;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;

/* loaded from: classes13.dex */
public class WMLDocumentImpl extends DocumentImpl implements WMLDocument {
    private static final Class[] _elemClassSigWML;
    private static Hashtable _elementTypesWML = null;
    static /* synthetic */ Class class$java$lang$String = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLAElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLAccessElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLAnchorElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLBElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLBigElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLBrElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLCardElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLDoElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLDocumentImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLEmElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLFieldsetElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLGoElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLHeadElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLIElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLImgElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLInputElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLMetaElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLNoopElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLOneventElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLOptgroupElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLOptionElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLPElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLPostfieldElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLPrevElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLRefreshElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLSelectElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLSetvarElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLSmallElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLStrongElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLTableElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLTdElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLTemplateElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLTimerElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLTrElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLUElementImpl = null;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLWmlElementImpl = null;
    private static final long serialVersionUID = -6582904849512384104L;

    static {
        Class[] clsArr = new Class[2];
        Class cls = class$org$apache$wml$dom$WMLDocumentImpl;
        if (cls == null) {
            cls = class$("org.apache.wml.dom.WMLDocumentImpl");
            class$org$apache$wml$dom$WMLDocumentImpl = cls;
        }
        clsArr[0] = cls;
        Class cls2 = class$java$lang$String;
        if (cls2 == null) {
            cls2 = class$("java.lang.String");
            class$java$lang$String = cls2;
        }
        clsArr[1] = cls2;
        _elemClassSigWML = clsArr;
        Hashtable hashtable = new Hashtable();
        _elementTypesWML = hashtable;
        Class cls3 = class$org$apache$wml$dom$WMLBElementImpl;
        if (cls3 == null) {
            cls3 = class$("org.apache.wml.dom.WMLBElementImpl");
            class$org$apache$wml$dom$WMLBElementImpl = cls3;
        }
        hashtable.put("b", cls3);
        Hashtable hashtable2 = _elementTypesWML;
        Class cls4 = class$org$apache$wml$dom$WMLNoopElementImpl;
        if (cls4 == null) {
            cls4 = class$("org.apache.wml.dom.WMLNoopElementImpl");
            class$org$apache$wml$dom$WMLNoopElementImpl = cls4;
        }
        hashtable2.put("noop", cls4);
        Hashtable hashtable3 = _elementTypesWML;
        Class cls5 = class$org$apache$wml$dom$WMLAElementImpl;
        if (cls5 == null) {
            cls5 = class$("org.apache.wml.dom.WMLAElementImpl");
            class$org$apache$wml$dom$WMLAElementImpl = cls5;
        }
        hashtable3.put("a", cls5);
        Hashtable hashtable4 = _elementTypesWML;
        Class cls6 = class$org$apache$wml$dom$WMLSetvarElementImpl;
        if (cls6 == null) {
            cls6 = class$("org.apache.wml.dom.WMLSetvarElementImpl");
            class$org$apache$wml$dom$WMLSetvarElementImpl = cls6;
        }
        hashtable4.put("setvar", cls6);
        Hashtable hashtable5 = _elementTypesWML;
        Class cls7 = class$org$apache$wml$dom$WMLAccessElementImpl;
        if (cls7 == null) {
            cls7 = class$("org.apache.wml.dom.WMLAccessElementImpl");
            class$org$apache$wml$dom$WMLAccessElementImpl = cls7;
        }
        hashtable5.put("access", cls7);
        Hashtable hashtable6 = _elementTypesWML;
        Class cls8 = class$org$apache$wml$dom$WMLStrongElementImpl;
        if (cls8 == null) {
            cls8 = class$("org.apache.wml.dom.WMLStrongElementImpl");
            class$org$apache$wml$dom$WMLStrongElementImpl = cls8;
        }
        hashtable6.put("strong", cls8);
        Hashtable hashtable7 = _elementTypesWML;
        Class cls9 = class$org$apache$wml$dom$WMLPostfieldElementImpl;
        if (cls9 == null) {
            cls9 = class$("org.apache.wml.dom.WMLPostfieldElementImpl");
            class$org$apache$wml$dom$WMLPostfieldElementImpl = cls9;
        }
        hashtable7.put("postfield", cls9);
        Hashtable hashtable8 = _elementTypesWML;
        Class cls10 = class$org$apache$wml$dom$WMLDoElementImpl;
        if (cls10 == null) {
            cls10 = class$("org.apache.wml.dom.WMLDoElementImpl");
            class$org$apache$wml$dom$WMLDoElementImpl = cls10;
        }
        hashtable8.put("do", cls10);
        Hashtable hashtable9 = _elementTypesWML;
        Class cls11 = class$org$apache$wml$dom$WMLWmlElementImpl;
        if (cls11 == null) {
            cls11 = class$("org.apache.wml.dom.WMLWmlElementImpl");
            class$org$apache$wml$dom$WMLWmlElementImpl = cls11;
        }
        hashtable9.put("wml", cls11);
        Hashtable hashtable10 = _elementTypesWML;
        Class cls12 = class$org$apache$wml$dom$WMLTrElementImpl;
        if (cls12 == null) {
            cls12 = class$("org.apache.wml.dom.WMLTrElementImpl");
            class$org$apache$wml$dom$WMLTrElementImpl = cls12;
        }
        hashtable10.put("tr", cls12);
        Hashtable hashtable11 = _elementTypesWML;
        Class cls13 = class$org$apache$wml$dom$WMLGoElementImpl;
        if (cls13 == null) {
            cls13 = class$("org.apache.wml.dom.WMLGoElementImpl");
            class$org$apache$wml$dom$WMLGoElementImpl = cls13;
        }
        hashtable11.put("go", cls13);
        Hashtable hashtable12 = _elementTypesWML;
        Class cls14 = class$org$apache$wml$dom$WMLBigElementImpl;
        if (cls14 == null) {
            cls14 = class$("org.apache.wml.dom.WMLBigElementImpl");
            class$org$apache$wml$dom$WMLBigElementImpl = cls14;
        }
        hashtable12.put("big", cls14);
        Hashtable hashtable13 = _elementTypesWML;
        Class cls15 = class$org$apache$wml$dom$WMLAnchorElementImpl;
        if (cls15 == null) {
            cls15 = class$("org.apache.wml.dom.WMLAnchorElementImpl");
            class$org$apache$wml$dom$WMLAnchorElementImpl = cls15;
        }
        hashtable13.put(Constants.ELEMNAME_ANCHOR_STRING, cls15);
        Hashtable hashtable14 = _elementTypesWML;
        Class cls16 = class$org$apache$wml$dom$WMLTimerElementImpl;
        if (cls16 == null) {
            cls16 = class$("org.apache.wml.dom.WMLTimerElementImpl");
            class$org$apache$wml$dom$WMLTimerElementImpl = cls16;
        }
        hashtable14.put("timer", cls16);
        Hashtable hashtable15 = _elementTypesWML;
        Class cls17 = class$org$apache$wml$dom$WMLSmallElementImpl;
        if (cls17 == null) {
            cls17 = class$("org.apache.wml.dom.WMLSmallElementImpl");
            class$org$apache$wml$dom$WMLSmallElementImpl = cls17;
        }
        hashtable15.put("small", cls17);
        Hashtable hashtable16 = _elementTypesWML;
        Class cls18 = class$org$apache$wml$dom$WMLOptgroupElementImpl;
        if (cls18 == null) {
            cls18 = class$("org.apache.wml.dom.WMLOptgroupElementImpl");
            class$org$apache$wml$dom$WMLOptgroupElementImpl = cls18;
        }
        hashtable16.put("optgroup", cls18);
        Hashtable hashtable17 = _elementTypesWML;
        Class cls19 = class$org$apache$wml$dom$WMLHeadElementImpl;
        if (cls19 == null) {
            cls19 = class$("org.apache.wml.dom.WMLHeadElementImpl");
            class$org$apache$wml$dom$WMLHeadElementImpl = cls19;
        }
        hashtable17.put(gon.f71289o, cls19);
        Hashtable hashtable18 = _elementTypesWML;
        Class cls20 = class$org$apache$wml$dom$WMLTdElementImpl;
        if (cls20 == null) {
            cls20 = class$("org.apache.wml.dom.WMLTdElementImpl");
            class$org$apache$wml$dom$WMLTdElementImpl = cls20;
        }
        hashtable18.put("td", cls20);
        Hashtable hashtable19 = _elementTypesWML;
        Class cls21 = class$org$apache$wml$dom$WMLFieldsetElementImpl;
        if (cls21 == null) {
            cls21 = class$("org.apache.wml.dom.WMLFieldsetElementImpl");
            class$org$apache$wml$dom$WMLFieldsetElementImpl = cls21;
        }
        hashtable19.put("fieldset", cls21);
        Hashtable hashtable20 = _elementTypesWML;
        Class cls22 = class$org$apache$wml$dom$WMLImgElementImpl;
        if (cls22 == null) {
            cls22 = class$("org.apache.wml.dom.WMLImgElementImpl");
            class$org$apache$wml$dom$WMLImgElementImpl = cls22;
        }
        hashtable20.put("img", cls22);
        Hashtable hashtable21 = _elementTypesWML;
        Class cls23 = class$org$apache$wml$dom$WMLRefreshElementImpl;
        if (cls23 == null) {
            cls23 = class$("org.apache.wml.dom.WMLRefreshElementImpl");
            class$org$apache$wml$dom$WMLRefreshElementImpl = cls23;
        }
        hashtable21.put("refresh", cls23);
        Hashtable hashtable22 = _elementTypesWML;
        Class cls24 = class$org$apache$wml$dom$WMLOneventElementImpl;
        if (cls24 == null) {
            cls24 = class$("org.apache.wml.dom.WMLOneventElementImpl");
            class$org$apache$wml$dom$WMLOneventElementImpl = cls24;
        }
        hashtable22.put("onevent", cls24);
        Hashtable hashtable23 = _elementTypesWML;
        Class cls25 = class$org$apache$wml$dom$WMLInputElementImpl;
        if (cls25 == null) {
            cls25 = class$("org.apache.wml.dom.WMLInputElementImpl");
            class$org$apache$wml$dom$WMLInputElementImpl = cls25;
        }
        hashtable23.put("input", cls25);
        Hashtable hashtable24 = _elementTypesWML;
        Class cls26 = class$org$apache$wml$dom$WMLPrevElementImpl;
        if (cls26 == null) {
            cls26 = class$("org.apache.wml.dom.WMLPrevElementImpl");
            class$org$apache$wml$dom$WMLPrevElementImpl = cls26;
        }
        hashtable24.put("prev", cls26);
        Hashtable hashtable25 = _elementTypesWML;
        Class cls27 = class$org$apache$wml$dom$WMLTableElementImpl;
        if (cls27 == null) {
            cls27 = class$("org.apache.wml.dom.WMLTableElementImpl");
            class$org$apache$wml$dom$WMLTableElementImpl = cls27;
        }
        hashtable25.put("table", cls27);
        Hashtable hashtable26 = _elementTypesWML;
        Class cls28 = class$org$apache$wml$dom$WMLMetaElementImpl;
        if (cls28 == null) {
            cls28 = class$("org.apache.wml.dom.WMLMetaElementImpl");
            class$org$apache$wml$dom$WMLMetaElementImpl = cls28;
        }
        hashtable26.put("meta", cls28);
        Hashtable hashtable27 = _elementTypesWML;
        Class cls29 = class$org$apache$wml$dom$WMLTemplateElementImpl;
        if (cls29 == null) {
            cls29 = class$("org.apache.wml.dom.WMLTemplateElementImpl");
            class$org$apache$wml$dom$WMLTemplateElementImpl = cls29;
        }
        hashtable27.put("template", cls29);
        Hashtable hashtable28 = _elementTypesWML;
        Class cls30 = class$org$apache$wml$dom$WMLBrElementImpl;
        if (cls30 == null) {
            cls30 = class$("org.apache.wml.dom.WMLBrElementImpl");
            class$org$apache$wml$dom$WMLBrElementImpl = cls30;
        }
        hashtable28.put("br", cls30);
        Hashtable hashtable29 = _elementTypesWML;
        Class cls31 = class$org$apache$wml$dom$WMLOptionElementImpl;
        if (cls31 == null) {
            cls31 = class$("org.apache.wml.dom.WMLOptionElementImpl");
            class$org$apache$wml$dom$WMLOptionElementImpl = cls31;
        }
        hashtable29.put("option", cls31);
        Hashtable hashtable30 = _elementTypesWML;
        Class cls32 = class$org$apache$wml$dom$WMLUElementImpl;
        if (cls32 == null) {
            cls32 = class$("org.apache.wml.dom.WMLUElementImpl");
            class$org$apache$wml$dom$WMLUElementImpl = cls32;
        }
        hashtable30.put("u", cls32);
        Hashtable hashtable31 = _elementTypesWML;
        Class cls33 = class$org$apache$wml$dom$WMLPElementImpl;
        if (cls33 == null) {
            cls33 = class$("org.apache.wml.dom.WMLPElementImpl");
            class$org$apache$wml$dom$WMLPElementImpl = cls33;
        }
        hashtable31.put("p", cls33);
        Hashtable hashtable32 = _elementTypesWML;
        Class cls34 = class$org$apache$wml$dom$WMLSelectElementImpl;
        if (cls34 == null) {
            cls34 = class$("org.apache.wml.dom.WMLSelectElementImpl");
            class$org$apache$wml$dom$WMLSelectElementImpl = cls34;
        }
        hashtable32.put("select", cls34);
        Hashtable hashtable33 = _elementTypesWML;
        Class cls35 = class$org$apache$wml$dom$WMLEmElementImpl;
        if (cls35 == null) {
            cls35 = class$("org.apache.wml.dom.WMLEmElementImpl");
            class$org$apache$wml$dom$WMLEmElementImpl = cls35;
        }
        hashtable33.put(ExtUnits.UNIT_EM, cls35);
        Hashtable hashtable34 = _elementTypesWML;
        Class cls36 = class$org$apache$wml$dom$WMLIElementImpl;
        if (cls36 == null) {
            cls36 = class$("org.apache.wml.dom.WMLIElementImpl");
            class$org$apache$wml$dom$WMLIElementImpl = cls36;
        }
        hashtable34.put("i", cls36);
        Hashtable hashtable35 = _elementTypesWML;
        Class cls37 = class$org$apache$wml$dom$WMLCardElementImpl;
        if (cls37 == null) {
            cls37 = class$("org.apache.wml.dom.WMLCardElementImpl");
            class$org$apache$wml$dom$WMLCardElementImpl = cls37;
        }
        hashtable35.put("card", cls37);
    }

    public WMLDocumentImpl(DocumentType documentType) {
        super(documentType, false);
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public boolean canRenameElements(String str, String str2, ElementImpl elementImpl) {
        return _elementTypesWML.get(str2) == _elementTypesWML.get(elementImpl.getTagName());
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl, org.w3c.dom.Document
    public Element createElement(String str) throws DOMException {
        Class cls = (Class) _elementTypesWML.get(str);
        if (cls == null) {
            return new WMLElementImpl(this, str);
        }
        try {
            return (Element) cls.getConstructor(_elemClassSigWML).newInstance(this, str);
        } catch (Exception e) {
            e = e;
            if (e instanceof InvocationTargetException) {
                e = ((InvocationTargetException) e).getTargetException();
            }
            PrintStream printStream = System.out;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Exception ");
            stringBuffer.append(e.getClass().getName());
            printStream.println(stringBuffer.toString());
            System.out.println(e.getMessage());
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Tag '");
            stringBuffer2.append(str);
            stringBuffer2.append("' associated with an Element class that failed to construct.");
            throw new IllegalStateException(stringBuffer2.toString());
        }
    }
}
