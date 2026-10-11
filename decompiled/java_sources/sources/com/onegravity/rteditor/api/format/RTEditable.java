package com.onegravity.rteditor.api.format;

import android.view.inputmethod.BaseInputConnection;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.converter.ConverterSpannedToHtml;
import com.onegravity.rteditor.effects.Effect;
import com.onegravity.rteditor.effects.Effects;

/* loaded from: classes7.dex */
public final class RTEditable extends RTSpanned {

    /* renamed from: c */
    public RTEditText f40133c;

    /* renamed from: d */
    public boolean f40134d;

    public RTEditable(RTEditText rTEditText) {
        super(rTEditText.getText());
        this.f40134d = true;
        this.f40133c = rTEditText;
    }

    /* renamed from: a */
    public final void m31560a() {
        if (this.f40134d) {
            BaseInputConnection.removeComposingSpans(this.f40133c.getText());
            Effects.cleanupParagraphs(this.f40133c, new Effect[0]);
        }
    }

    @Override // com.onegravity.rteditor.api.format.RTText
    public RTText convertTo(RTFormat rTFormat, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory) {
        if (rTFormat instanceof RTFormat.Html) {
            m31560a();
            return new ConverterSpannedToHtml().convert(this.f40133c.getText(), (RTFormat.Html) rTFormat);
        }
        if (!(rTFormat instanceof RTFormat.PlainText)) {
            return super.convertTo(rTFormat, rTMediaFactory);
        }
        m31560a();
        return new RTPlainText(new ConverterSpannedToHtml().convert(this.f40133c.getText(), RTFormat.HTML).convertTo(RTFormat.PLAIN_TEXT, rTMediaFactory).getText());
    }

    public RTEditable setCleanComposing(boolean z) {
        this.f40134d = z;
        return this;
    }
}
