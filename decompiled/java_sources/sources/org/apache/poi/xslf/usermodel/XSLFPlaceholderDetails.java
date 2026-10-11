package org.apache.poi.xslf.usermodel;

import java.util.function.Consumer;
import java.util.function.Function;
import javax.xml.namespace.QName;
import org.apache.poi.ooxml.util.XPathHelper;
import org.apache.poi.sl.usermodel.MasterSheet;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.PlaceholderDetails;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.xslf.usermodel.XSLFPlaceholderDetails;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps;
import org.openxmlformats.schemas.presentationml.x2006.main.CTHeaderFooter;
import org.openxmlformats.schemas.presentationml.x2006.main.CTNotesMaster;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPlaceholder;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster;
import org.openxmlformats.schemas.presentationml.x2006.main.STPlaceholderSize;
import org.openxmlformats.schemas.presentationml.x2006.main.STPlaceholderType;

/* loaded from: classes13.dex */
public class XSLFPlaceholderDetails implements PlaceholderDetails {
    private static final QName[] NV_CONTAINER = {new QName(XSSFRelation.NS_PRESENTATIONML, "nvSpPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "nvCxnSpPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "nvGrpSpPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "nvPicPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "nvGraphicFramePr")};
    private static final QName[] NV_PROPS = {new QName(XSSFRelation.NS_PRESENTATIONML, "nvPr")};
    private CTPlaceholder _ph;
    private final XSLFShape shape;

    /* renamed from: org.apache.poi.xslf.usermodel.XSLFPlaceholderDetails$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198981 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$Placeholder;

        /* renamed from: $SwitchMap$org$apache$poi$sl$usermodel$PlaceholderDetails$PlaceholderSize */
        static final /* synthetic */ int[] f111803xcfbc3540;

        static {
            int[] iArr = new int[PlaceholderDetails.PlaceholderSize.values().length];
            f111803xcfbc3540 = iArr;
            try {
                iArr[PlaceholderDetails.PlaceholderSize.full.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111803xcfbc3540[PlaceholderDetails.PlaceholderSize.half.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111803xcfbc3540[PlaceholderDetails.PlaceholderSize.quarter.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Placeholder.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$Placeholder = iArr2;
            try {
                iArr2[Placeholder.DATETIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.FOOTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.HEADER.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.SLIDE_NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public XSLFPlaceholderDetails(XSLFShape xSLFShape) {
        this.shape = xSLFShape;
    }

    private CTHeaderFooter getHeaderFooter(boolean z) {
        Sheet<XSLFShape, XSLFTextParagraph> sheet = this.shape.getSheet();
        if (!(sheet instanceof MasterSheet) || (sheet instanceof XSLFSlideLayout)) {
            sheet = (XSLFSheet) sheet.getMasterSheet();
        }
        if (sheet instanceof XSLFSlideMaster) {
            CTSlideMaster xmlObject = ((XSLFSlideMaster) sheet).getXmlObject();
            return (xmlObject.isSetHf() || !z) ? xmlObject.getHf() : xmlObject.addNewHf();
        }
        if (!(sheet instanceof XSLFNotesMaster)) {
            return null;
        }
        CTNotesMaster xmlObject2 = ((XSLFNotesMaster) sheet).getXmlObject();
        return (xmlObject2.isSetHf() || !z) ? xmlObject2.getHf() : xmlObject2.addNewHf();
    }

    private CTApplicationNonVisualDrawingProps getNvProps() {
        try {
            return (CTApplicationNonVisualDrawingProps) XPathHelper.selectProperty(this.shape.getXmlObject(), CTApplicationNonVisualDrawingProps.class, null, NV_CONTAINER, NV_PROPS);
        } catch (XmlException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Consumer lambda$setVisible$0(final CTHeaderFooter cTHeaderFooter) {
        cTHeaderFooter.getClass();
        return new Consumer() { // from class: com.sunia.HTREnginev2.ino
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTHeaderFooter.this.setDt(((Boolean) obj).booleanValue());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Consumer lambda$setVisible$1(final CTHeaderFooter cTHeaderFooter) {
        cTHeaderFooter.getClass();
        return new Consumer() { // from class: com.sunia.HTREnginev2.cno
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTHeaderFooter.this.setFtr(((Boolean) obj).booleanValue());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Consumer lambda$setVisible$2(final CTHeaderFooter cTHeaderFooter) {
        cTHeaderFooter.getClass();
        return new Consumer() { // from class: com.sunia.HTREnginev2.jno
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTHeaderFooter.this.setHdr(((Boolean) obj).booleanValue());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Consumer lambda$setVisible$3(final CTHeaderFooter cTHeaderFooter) {
        cTHeaderFooter.getClass();
        return new Consumer() { // from class: com.sunia.HTREnginev2.dno
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTHeaderFooter.this.setSldNum(((Boolean) obj).booleanValue());
            }
        };
    }

    public CTPlaceholder getCTPlaceholder(boolean z) {
        CTPlaceholder cTPlaceholder = this._ph;
        if (cTPlaceholder != null) {
            return cTPlaceholder;
        }
        CTApplicationNonVisualDrawingProps nvProps = getNvProps();
        if (nvProps == null) {
            return null;
        }
        CTPlaceholder ph = (nvProps.isSetPh() || !z) ? nvProps.getPh() : nvProps.addNewPh();
        this._ph = ph;
        return ph;
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public Placeholder getPlaceholder() {
        CTPlaceholder cTPlaceholder = getCTPlaceholder(false);
        if (cTPlaceholder == null) {
            return null;
        }
        return Placeholder.lookupOoxml(cTPlaceholder.getType().intValue());
    }

    public XSLFSimpleShape getPlaceholderShape() {
        CTPlaceholder cTPlaceholder = getCTPlaceholder(false);
        if (cTPlaceholder == null) {
            return null;
        }
        return ((XSLFSheet) this.shape.getSheet().getMasterSheet()).getPlaceholder(cTPlaceholder);
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public PlaceholderDetails.PlaceholderSize getSize() {
        CTPlaceholder cTPlaceholder = getCTPlaceholder(false);
        if (cTPlaceholder == null || !cTPlaceholder.isSetSz()) {
            return null;
        }
        int intValue = cTPlaceholder.getSz().intValue();
        if (intValue == 1) {
            return PlaceholderDetails.PlaceholderSize.full;
        }
        if (intValue == 2) {
            return PlaceholderDetails.PlaceholderSize.half;
        }
        if (intValue != 3) {
            return null;
        }
        return PlaceholderDetails.PlaceholderSize.quarter;
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public String getText() {
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public boolean isVisible() {
        CTPlaceholder cTPlaceholder = getCTPlaceholder(false);
        if (cTPlaceholder == null || !cTPlaceholder.isSetType()) {
            return true;
        }
        CTHeaderFooter headerFooter = getHeaderFooter(false);
        if (headerFooter == null) {
            return false;
        }
        Placeholder lookupOoxml = Placeholder.lookupOoxml(cTPlaceholder.getType().intValue());
        if (lookupOoxml == null) {
            return true;
        }
        int i = C198981.$SwitchMap$org$apache$poi$sl$usermodel$Placeholder[lookupOoxml.ordinal()];
        if (i == 1) {
            return !headerFooter.isSetDt() || headerFooter.getDt();
        }
        if (i == 2) {
            return !headerFooter.isSetFtr() || headerFooter.getFtr();
        }
        if (i == 3) {
            return !headerFooter.isSetHdr() || headerFooter.getHdr();
        }
        if (i != 4) {
            return true;
        }
        return !headerFooter.isSetSldNum() || headerFooter.getSldNum();
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public void setPlaceholder(Placeholder placeholder) {
        CTPlaceholder cTPlaceholder = getCTPlaceholder(placeholder != null);
        if (cTPlaceholder != null) {
            if (placeholder != null) {
                cTPlaceholder.setType(STPlaceholderType.Enum.forInt(placeholder.ooxmlId));
                return;
            }
            CTApplicationNonVisualDrawingProps nvProps = getNvProps();
            if (nvProps != null) {
                nvProps.unsetPh();
            }
        }
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public void setSize(PlaceholderDetails.PlaceholderSize placeholderSize) {
        CTPlaceholder cTPlaceholder = getCTPlaceholder(false);
        if (cTPlaceholder == null) {
            return;
        }
        if (placeholderSize == null) {
            cTPlaceholder.unsetSz();
            return;
        }
        int i = C198981.f111803xcfbc3540[placeholderSize.ordinal()];
        if (i == 1) {
            cTPlaceholder.setSz(STPlaceholderSize.FULL);
        } else if (i == 2) {
            cTPlaceholder.setSz(STPlaceholderSize.HALF);
        } else {
            if (i != 3) {
                return;
            }
            cTPlaceholder.setSz(STPlaceholderSize.QUARTER);
        }
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public void setText(String str) {
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public void setVisible(boolean z) {
        Function function;
        Placeholder placeholder = getPlaceholder();
        if (placeholder == null) {
            return;
        }
        int i = C198981.$SwitchMap$org$apache$poi$sl$usermodel$Placeholder[placeholder.ordinal()];
        if (i == 1) {
            function = new Function() { // from class: com.sunia.HTREnginev2.eno
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Consumer lambda$setVisible$0;
                    lambda$setVisible$0 = XSLFPlaceholderDetails.lambda$setVisible$0((CTHeaderFooter) obj);
                    return lambda$setVisible$0;
                }
            };
        } else if (i == 2) {
            function = new Function() { // from class: com.sunia.HTREnginev2.fno
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Consumer lambda$setVisible$1;
                    lambda$setVisible$1 = XSLFPlaceholderDetails.lambda$setVisible$1((CTHeaderFooter) obj);
                    return lambda$setVisible$1;
                }
            };
        } else if (i == 3) {
            function = new Function() { // from class: com.sunia.HTREnginev2.gno
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Consumer lambda$setVisible$2;
                    lambda$setVisible$2 = XSLFPlaceholderDetails.lambda$setVisible$2((CTHeaderFooter) obj);
                    return lambda$setVisible$2;
                }
            };
        } else if (i != 4) {
            return;
        } else {
            function = new Function() { // from class: com.sunia.HTREnginev2.hno
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Consumer lambda$setVisible$3;
                    lambda$setVisible$3 = XSLFPlaceholderDetails.lambda$setVisible$3((CTHeaderFooter) obj);
                    return lambda$setVisible$3;
                }
            };
        }
        CTHeaderFooter headerFooter = getHeaderFooter(true);
        if (headerFooter == null) {
            return;
        }
        ((Consumer) function.apply(headerFooter)).accept(Boolean.valueOf(z));
    }
}
