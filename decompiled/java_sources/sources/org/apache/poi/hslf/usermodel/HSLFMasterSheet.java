package org.apache.poi.hslf.usermodel;

import org.apache.poi.hslf.model.textproperties.TextPropCollection;
import org.apache.poi.hslf.record.SheetContainer;
import org.apache.poi.sl.usermodel.MasterSheet;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.SimpleShape;

/* loaded from: classes12.dex */
public abstract class HSLFMasterSheet extends HSLFSheet implements MasterSheet<HSLFShape, HSLFTextParagraph> {
    public HSLFMasterSheet(SheetContainer sheetContainer, int i) {
        super(sheetContainer, i);
    }

    @Override // org.apache.poi.sl.usermodel.MasterSheet
    public /* bridge */ /* synthetic */ SimpleShape<HSLFShape, HSLFTextParagraph> getPlaceholder(Placeholder placeholder) {
        return super.getPlaceholder(placeholder);
    }

    public abstract TextPropCollection getPropCollection(int i, int i2, String str, boolean z);
}
