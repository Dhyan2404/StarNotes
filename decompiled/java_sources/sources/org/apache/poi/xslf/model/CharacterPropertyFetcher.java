package org.apache.poi.xslf.model;

import java.util.function.Consumer;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.util.Internal;
import org.apache.poi.xslf.model.CharacterPropertyFetcher;
import org.apache.poi.xslf.usermodel.XSLFShape;
import org.apache.poi.xslf.usermodel.XSLFSlideMaster;
import org.apache.poi.xslf.usermodel.XSLFTextParagraph;
import org.apache.poi.xslf.usermodel.XSLFTextRun;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties;

@Internal
/* loaded from: classes13.dex */
public final class CharacterPropertyFetcher<T> extends PropertyFetcher<T> {
    int _level;
    private final CharPropFetcher<T> fetcher;
    private final XSLFTextRun run;

    /* loaded from: classes13.dex */
    public interface CharPropFetcher<S> {
        void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer<S> consumer);
    }

    public CharacterPropertyFetcher(XSLFTextRun xSLFTextRun, CharPropFetcher<T> charPropFetcher) {
        this._level = xSLFTextRun.getParagraph().getIndentLevel();
        this.fetcher = charPropFetcher;
        this.run = xSLFTextRun;
    }

    private void fetchMasterProp() {
        if (isSet()) {
            return;
        }
        fetchProp(this.run.getParagraph().getDefaultMasterStyle());
    }

    private void fetchParagraphDefaultRunProp() {
        CTTextParagraphProperties pPr;
        if (isSet() || (pPr = this.run.getParagraph().getXmlObject().getPPr()) == null) {
            return;
        }
        fetchProp(pPr.getDefRPr());
    }

    private void fetchProp(CTTextParagraphProperties cTTextParagraphProperties) {
        if (cTTextParagraphProperties != null) {
            fetchProp(cTTextParagraphProperties.getDefRPr());
        }
    }

    private void fetchRunProp() {
        fetchProp(this.run.getRPr(false));
    }

    private void fetchShapeProp(XSLFShape xSLFShape) {
        if (isSet()) {
            return;
        }
        xSLFShape.fetchShapeProperty(this);
    }

    private void fetchThemeProp(XSLFShape xSLFShape) {
        if (isSet()) {
            return;
        }
        fetchProp(ParagraphPropertyFetcher.getThemeProps(xSLFShape, this._level));
    }

    @Override // org.apache.poi.xslf.model.PropertyFetcher
    public boolean fetch(XSLFShape xSLFShape) {
        try {
            fetchProp(ParagraphPropertyFetcher.select(xSLFShape, this._level));
        } catch (XmlException unused) {
        }
        return isSet();
    }

    public T fetchProperty(XSLFShape xSLFShape) {
        Sheet<XSLFShape, XSLFTextParagraph> sheet = xSLFShape.getSheet();
        fetchRunProp();
        if (!(sheet instanceof XSLFSlideMaster)) {
            fetchParagraphDefaultRunProp();
            fetchShapeProp(xSLFShape);
            fetchThemeProp(xSLFShape);
        }
        fetchMasterProp();
        if (isSet()) {
            return getValue();
        }
        return null;
    }

    private void fetchProp(CTTextCharacterProperties cTTextCharacterProperties) {
        if (cTTextCharacterProperties != null) {
            this.fetcher.fetch(cTTextCharacterProperties, new Consumer() { // from class: com.sunia.HTREnginev2.erd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CharacterPropertyFetcher.this.setValue(obj);
                }
            });
        }
    }
}
