package org.apache.poi.xddf.usermodel.text;

import java.util.Locale;
import java.util.function.Consumer;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.util.Internal;
import org.apache.poi.xddf.usermodel.XDDFColor;
import org.apache.poi.xddf.usermodel.XDDFEffectContainer;
import org.apache.poi.xddf.usermodel.XDDFEffectList;
import org.apache.poi.xddf.usermodel.XDDFExtensionList;
import org.apache.poi.xddf.usermodel.XDDFFillProperties;
import org.apache.poi.xddf.usermodel.XDDFGradientFillProperties;
import org.apache.poi.xddf.usermodel.XDDFGroupFillProperties;
import org.apache.poi.xddf.usermodel.XDDFLineProperties;
import org.apache.poi.xddf.usermodel.XDDFNoFillProperties;
import org.apache.poi.xddf.usermodel.XDDFPatternFillProperties;
import org.apache.poi.xddf.usermodel.XDDFPictureFillProperties;
import org.apache.poi.xddf.usermodel.XDDFSolidFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink;
import org.openxmlformats.schemas.drawingml.x2006.main.CTLineProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextFont;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextCapsType;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextStrikeType;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextUnderlineType;

/* loaded from: classes13.dex */
public class XDDFRunProperties {
    private CTTextCharacterProperties props;

    /* renamed from: org.apache.poi.xddf.usermodel.text.XDDFRunProperties$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198831 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup;

        static {
            int[] iArr = new int[FontGroup.values().length];
            $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup = iArr;
            try {
                iArr[FontGroup.COMPLEX_SCRIPT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.EAST_ASIAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.LATIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.SYMBOL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public XDDFRunProperties() {
        this(CTTextCharacterProperties.Factory.newInstance());
    }

    private static <T> void update(Supplier<Boolean> supplier, Runnable runnable, Consumer<T> consumer, T t) {
        if (t != null) {
            consumer.accept(t);
        } else if (supplier.get().booleanValue()) {
            runnable.run();
        }
    }

    public XDDFEffectContainer getEffectContainer() {
        if (this.props.isSetEffectDag()) {
            return new XDDFEffectContainer(this.props.getEffectDag());
        }
        return null;
    }

    public XDDFEffectList getEffectList() {
        if (this.props.isSetEffectLst()) {
            return new XDDFEffectList(this.props.getEffectLst());
        }
        return null;
    }

    public XDDFExtensionList getExtensionList() {
        if (this.props.isSetExtLst()) {
            return new XDDFExtensionList(this.props.getExtLst());
        }
        return null;
    }

    @Internal
    public CTTextCharacterProperties getXmlObject() {
        return this.props;
    }

    public void setAlternativeLanguage(Locale locale) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.ago
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetAltLang());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.lgo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetAltLang();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.qgo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setAltLang((String) obj);
            }
        }, locale == null ? null : locale.toLanguageTag());
    }

    public void setBaseline(Integer num) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.mfo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetBaseline());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.nfo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetBaseline();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.ofo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setBaseline((Integer) obj);
            }
        }, num);
    }

    public void setBold(Boolean bool) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.feo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetB());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.geo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetB();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.heo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setB(((Boolean) obj).booleanValue());
            }
        }, bool);
    }

    public void setBookmark(String str) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.zdo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetBmk());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.aeo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetBmk();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.beo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setBmk((String) obj);
            }
        }, str);
    }

    public void setCapitals(CapsType capsType) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.cfo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetCap());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.dfo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetCap();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.ffo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setCap((STTextCapsType.Enum) obj);
            }
        }, capsType == null ? null : capsType.underlying);
    }

    public void setCharacterKerning(Double d) {
        if (d != null && (d.doubleValue() < 0.0d || 4000.0d < d.doubleValue())) {
            throw new IllegalArgumentException("Minimum inclusive = 0. Maximum inclusive = 4000.");
        }
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.rgo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetKern());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.ndo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetKern();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.odo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setKern(((Integer) obj).intValue());
            }
        }, d == null ? null : Integer.valueOf((int) (d.doubleValue() * 100.0d)));
    }

    public void setCharacterSpacing(Double d) {
        if (d != null && (d.doubleValue() < -4000.0d || 4000.0d < d.doubleValue())) {
            throw new IllegalArgumentException("Minimum inclusive = -4000. Maximum inclusive = 4000.");
        }
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.zfo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetSpc());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.bgo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetSpc();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.cgo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setSpc((Integer) obj);
            }
        }, d == null ? null : Integer.valueOf((int) (d.doubleValue() * 100.0d)));
    }

    public void setDirty(Boolean bool) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.meo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetDirty());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.neo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetDirty();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.oeo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setDirty(((Boolean) obj).booleanValue());
            }
        }, bool);
    }

    public void setEffectContainer(XDDFEffectContainer xDDFEffectContainer) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.jeo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetEffectDag());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.keo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetEffectDag();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.leo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setEffectDag((CTEffectContainer) obj);
            }
        }, xDDFEffectContainer == null ? null : xDDFEffectContainer.getXmlObject());
    }

    public void setEffectList(XDDFEffectList xDDFEffectList) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.tfo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetEffectLst());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.ufo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetEffectLst();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.vfo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setEffectLst((CTEffectList) obj);
            }
        }, xDDFEffectList == null ? null : xDDFEffectList.getXmlObject());
    }

    public void setExtensionList(XDDFExtensionList xDDFExtensionList) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.peo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetExtLst());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.qeo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetExtLst();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.reo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setExtLst((CTOfficeArtExtensionList) obj);
            }
        }, xDDFExtensionList == null ? null : xDDFExtensionList.getXmlObject());
    }

    public void setFillProperties(XDDFFillProperties xDDFFillProperties) {
        if (this.props.isSetBlipFill()) {
            this.props.unsetBlipFill();
        }
        if (this.props.isSetGradFill()) {
            this.props.unsetGradFill();
        }
        if (this.props.isSetGrpFill()) {
            this.props.unsetGrpFill();
        }
        if (this.props.isSetNoFill()) {
            this.props.unsetNoFill();
        }
        if (this.props.isSetPattFill()) {
            this.props.unsetPattFill();
        }
        if (this.props.isSetSolidFill()) {
            this.props.unsetSolidFill();
        }
        if (xDDFFillProperties == null) {
            return;
        }
        if (xDDFFillProperties instanceof XDDFGradientFillProperties) {
            this.props.setGradFill(((XDDFGradientFillProperties) xDDFFillProperties).getXmlObject());
            return;
        }
        if (xDDFFillProperties instanceof XDDFGroupFillProperties) {
            this.props.setGrpFill(((XDDFGroupFillProperties) xDDFFillProperties).getXmlObject());
            return;
        }
        if (xDDFFillProperties instanceof XDDFNoFillProperties) {
            this.props.setNoFill(((XDDFNoFillProperties) xDDFFillProperties).getXmlObject());
            return;
        }
        if (xDDFFillProperties instanceof XDDFPatternFillProperties) {
            this.props.setPattFill(((XDDFPatternFillProperties) xDDFFillProperties).getXmlObject());
        } else if (xDDFFillProperties instanceof XDDFPictureFillProperties) {
            this.props.setBlipFill(((XDDFPictureFillProperties) xDDFFillProperties).getXmlObject());
        } else if (xDDFFillProperties instanceof XDDFSolidFillProperties) {
            this.props.setSolidFill(((XDDFSolidFillProperties) xDDFFillProperties).getXmlObject());
        }
    }

    public void setFontSize(Double d) {
        if (d != null && (d.doubleValue() < 1.0d || 400.0d < d.doubleValue())) {
            throw new IllegalArgumentException("Minimum inclusive = 1. Maximum inclusive = 400.");
        }
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.jfo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetSz());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.kfo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetSz();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.lfo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setSz(((Integer) obj).intValue());
            }
        }, d == null ? null : Integer.valueOf((int) (d.doubleValue() * 100.0d)));
    }

    public void setFonts(XDDFFont[] xDDFFontArr) {
        for (XDDFFont xDDFFont : xDDFFontArr) {
            CTTextFont xmlObject = xDDFFont.getXmlObject();
            int i = C198831.$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[xDDFFont.getGroup().ordinal()];
            if (i == 1) {
                final CTTextCharacterProperties cTTextCharacterProperties = this.props;
                cTTextCharacterProperties.getClass();
                Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.dgo
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Boolean.valueOf(CTTextCharacterProperties.this.isSetCs());
                    }
                };
                final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
                cTTextCharacterProperties2.getClass();
                Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.ggo
                    @Override // java.lang.Runnable
                    public final void run() {
                        CTTextCharacterProperties.this.unsetCs();
                    }
                };
                final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
                cTTextCharacterProperties3.getClass();
                update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.hgo
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        CTTextCharacterProperties.this.setCs((CTTextFont) obj);
                    }
                }, xmlObject);
            } else if (i == 2) {
                final CTTextCharacterProperties cTTextCharacterProperties4 = this.props;
                cTTextCharacterProperties4.getClass();
                Supplier supplier2 = new Supplier() { // from class: com.sunia.HTREnginev2.igo
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Boolean.valueOf(CTTextCharacterProperties.this.isSetEa());
                    }
                };
                final CTTextCharacterProperties cTTextCharacterProperties5 = this.props;
                cTTextCharacterProperties5.getClass();
                Runnable runnable2 = new Runnable() { // from class: com.sunia.HTREnginev2.jgo
                    @Override // java.lang.Runnable
                    public final void run() {
                        CTTextCharacterProperties.this.unsetEa();
                    }
                };
                final CTTextCharacterProperties cTTextCharacterProperties6 = this.props;
                cTTextCharacterProperties6.getClass();
                update(supplier2, runnable2, new Consumer() { // from class: com.sunia.HTREnginev2.kgo
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        CTTextCharacterProperties.this.setEa((CTTextFont) obj);
                    }
                }, xmlObject);
            } else if (i == 3) {
                final CTTextCharacterProperties cTTextCharacterProperties7 = this.props;
                cTTextCharacterProperties7.getClass();
                Supplier supplier3 = new Supplier() { // from class: com.sunia.HTREnginev2.mgo
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Boolean.valueOf(CTTextCharacterProperties.this.isSetLatin());
                    }
                };
                final CTTextCharacterProperties cTTextCharacterProperties8 = this.props;
                cTTextCharacterProperties8.getClass();
                Runnable runnable3 = new Runnable() { // from class: com.sunia.HTREnginev2.ngo
                    @Override // java.lang.Runnable
                    public final void run() {
                        CTTextCharacterProperties.this.unsetLatin();
                    }
                };
                final CTTextCharacterProperties cTTextCharacterProperties9 = this.props;
                cTTextCharacterProperties9.getClass();
                update(supplier3, runnable3, new Consumer() { // from class: com.sunia.HTREnginev2.ogo
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        CTTextCharacterProperties.this.setLatin((CTTextFont) obj);
                    }
                }, xmlObject);
            } else if (i == 4) {
                final CTTextCharacterProperties cTTextCharacterProperties10 = this.props;
                cTTextCharacterProperties10.getClass();
                Supplier supplier4 = new Supplier() { // from class: com.sunia.HTREnginev2.pgo
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Boolean.valueOf(CTTextCharacterProperties.this.isSetSym());
                    }
                };
                final CTTextCharacterProperties cTTextCharacterProperties11 = this.props;
                cTTextCharacterProperties11.getClass();
                Runnable runnable4 = new Runnable() { // from class: com.sunia.HTREnginev2.ego
                    @Override // java.lang.Runnable
                    public final void run() {
                        CTTextCharacterProperties.this.unsetSym();
                    }
                };
                final CTTextCharacterProperties cTTextCharacterProperties12 = this.props;
                cTTextCharacterProperties12.getClass();
                update(supplier4, runnable4, new Consumer() { // from class: com.sunia.HTREnginev2.fgo
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        CTTextCharacterProperties.this.setSym((CTTextFont) obj);
                    }
                }, xmlObject);
            }
        }
    }

    public void setHighlight(XDDFColor xDDFColor) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.mdo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetHighlight());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.xdo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetHighlight();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.ieo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setHighlight((CTColor) obj);
            }
        }, xDDFColor == null ? null : xDDFColor.getColorContainer());
    }

    public void setHyperlink(XDDFHyperlink xDDFHyperlink) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.sdo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetHlinkClick());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.tdo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetHlinkClick();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.udo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setHlinkClick((CTHyperlink) obj);
            }
        }, xDDFHyperlink == null ? null : xDDFHyperlink.getXmlObject());
    }

    public void setItalic(Boolean bool) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.pdo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetI());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.qdo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetI();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.rdo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setI(((Boolean) obj).booleanValue());
            }
        }, bool);
    }

    public void setKumimoji(Boolean bool) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.seo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetKumimoji());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.ueo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetKumimoji();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.veo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setKumimoji(((Boolean) obj).booleanValue());
            }
        }, bool);
    }

    public void setLanguage(Locale locale) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.teo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetLang());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.efo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetLang();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.pfo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setLang((String) obj);
            }
        }, locale == null ? null : locale.toLanguageTag());
    }

    public void setLineProperties(XDDFLineProperties xDDFLineProperties) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.ceo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetLn());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.deo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetLn();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.eeo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setLn((CTLineProperties) obj);
            }
        }, xDDFLineProperties == null ? null : xDDFLineProperties.getXmlObject());
    }

    public void setMouseOver(XDDFHyperlink xDDFHyperlink) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.qfo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetHlinkMouseOver());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.rfo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetHlinkMouseOver();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.sfo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setHlinkMouseOver((CTHyperlink) obj);
            }
        }, xDDFHyperlink == null ? null : xDDFHyperlink.getXmlObject());
    }

    public void setNoProof(Boolean bool) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.zeo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetNoProof());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.afo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetNoProof();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.bfo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setNoProof(((Boolean) obj).booleanValue());
            }
        }, bool);
    }

    public void setNormalizeHeights(Boolean bool) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.gfo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetNormalizeH());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.hfo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetNormalizeH();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.ifo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setNormalizeH(((Boolean) obj).booleanValue());
            }
        }, bool);
    }

    public void setSpellError(Boolean bool) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.wfo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetErr());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.xfo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetErr();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.yfo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setErr(((Boolean) obj).booleanValue());
            }
        }, bool);
    }

    public void setStrikeThrough(StrikeType strikeType) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.vdo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetStrike());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.wdo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetStrike();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.ydo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setStrike((STTextStrikeType.Enum) obj);
            }
        }, strikeType == null ? null : strikeType.underlying);
    }

    public void setUnderline(UnderlineType underlineType) {
        final CTTextCharacterProperties cTTextCharacterProperties = this.props;
        cTTextCharacterProperties.getClass();
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.weo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTTextCharacterProperties.this.isSetU());
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties2 = this.props;
        cTTextCharacterProperties2.getClass();
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.xeo
            @Override // java.lang.Runnable
            public final void run() {
                CTTextCharacterProperties.this.unsetU();
            }
        };
        final CTTextCharacterProperties cTTextCharacterProperties3 = this.props;
        cTTextCharacterProperties3.getClass();
        update(supplier, runnable, new Consumer() { // from class: com.sunia.HTREnginev2.yeo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CTTextCharacterProperties.this.setU((STTextUnderlineType.Enum) obj);
            }
        }, underlineType == null ? null : underlineType.underlying);
    }

    @Internal
    public XDDFRunProperties(CTTextCharacterProperties cTTextCharacterProperties) {
        this.props = cTTextCharacterProperties;
    }
}
