package com.onegravity.rteditor;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.TextWatcher;
import android.text.style.ParagraphStyle;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import com.blankj.utilcode.util.ClipboardUtils;
import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.format.RTEditable;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.api.format.RTHtml;
import com.onegravity.rteditor.api.format.RTPlainText;
import com.onegravity.rteditor.api.format.RTText;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTMedia;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.effects.Effect;
import com.onegravity.rteditor.effects.Effects;
import com.onegravity.rteditor.extension.RTRichTextExtKt;
import com.onegravity.rteditor.spans.BulletSpan;
import com.onegravity.rteditor.spans.LinkSpan;
import com.onegravity.rteditor.spans.MediaSpan;
import com.onegravity.rteditor.spans.NumberSpan;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Paragraph;
import com.onegravity.rteditor.utils.RTLayout;
import com.onegravity.rteditor.utils.Selection;
import com.onyx.android.sdk.base.utils.Debug;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes7.dex */
public class RTEditText extends AppCompatEditText implements TextWatcher, SpanWatcher, LinkSpan.LinkSpanListener {

    /* renamed from: J */
    public int f40080J;

    /* renamed from: O */
    public int f40081O;

    /* renamed from: Q */
    public int f40082Q;

    /* renamed from: k */
    public boolean f40083k;

    /* renamed from: k0 */
    public String f40084k0;

    /* renamed from: l */
    public boolean f40085l;

    /* renamed from: m */
    public RTLayout f40086m;

    /* renamed from: n */
    public boolean f40087n;

    /* renamed from: o */
    public boolean f40088o;

    /* renamed from: p */
    public boolean f40089p;

    /* renamed from: q */
    public boolean f40090q;

    /* renamed from: q0 */
    public String f40091q0;

    /* renamed from: r */
    public RTEditTextListener f40092r;

    /* renamed from: s */
    public RTMediaFactory<RTImage, RTAudio, RTVideo> f40093s;

    /* renamed from: t */
    public int f40094t;

    /* renamed from: t0 */
    public Spannable f40095t0;

    /* renamed from: u */
    public int f40096u;

    /* renamed from: u0 */
    public Set<RTMedia> f40097u0;

    /* renamed from: v */
    public boolean f40098v;

    /* renamed from: v0 */
    public Set<RTMedia> f40099v0;

    /* renamed from: w */
    public boolean f40100w;

    /* renamed from: x */
    public boolean f40101x;

    /* renamed from: y */
    public boolean f40102y;

    /* renamed from: z */
    public boolean f40103z;

    /* loaded from: classes7.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C7029a();
        private String mContent;
        private boolean mUseRTFormatting;

        /* renamed from: com.onegravity.rteditor.RTEditText$SavedState$a */
        /* loaded from: classes7.dex */
        public class C7029a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getContent() {
            return this.mContent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean useRTFormatting() {
            return this.mUseRTFormatting;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mUseRTFormatting ? 1 : 0);
            parcel.writeString(this.mContent);
        }

        public SavedState(Parcelable parcelable, boolean z, String str) {
            super(parcelable);
            this.mUseRTFormatting = z;
            this.mContent = str;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mUseRTFormatting = parcel.readInt() == 1;
            this.mContent = parcel.readString();
        }
    }

    public RTEditText(Context context) {
        super(context);
        this.f40083k = true;
        this.f40088o = false;
        this.f40094t = -1;
        this.f40096u = -1;
        this.f40097u0 = new HashSet();
        this.f40099v0 = new HashSet();
        m31527i();
    }

    private RTLayout getRTLayout() {
        synchronized (this) {
            if (this.f40086m == null || this.f40085l) {
                this.f40086m = new RTLayout(getText());
                this.f40085l = false;
            }
        }
        return this.f40086m;
    }

    private synchronized void setParagraphsAreUp2Date(boolean z) {
        if (!this.f40100w) {
            this.f40098v = z;
        }
    }

    @Override // android.text.TextWatcher
    public synchronized void afterTextChanged(Editable editable) {
        if (this.f40102y || this.f40103z) {
            if (!(this.f40080J >= editable.length()) && editable.toString().endsWith("\n")) {
                append("\u200b");
            }
        }
        String obj = editable.toString();
        String str = this.f40091q0;
        if (str == null) {
            str = "";
        }
        if (this.f40092r != null && !this.f40101x && !str.equals(obj)) {
            this.f40092r.onTextChanged(this, this.f40095t0, cloneSpannable(), this.f40081O, this.f40082Q, getSelectionStart(), getSelectionEnd());
            this.f40091q0 = obj;
        }
        this.f40085l = true;
        this.f40089p = true;
        setParagraphsAreUp2Date(false);
        m31522d();
    }

    public <V, C extends RTSpan<V>> void applyEffect(Effect<V, C> effect, V v) {
        try {
            m31523e(effect, v);
        } catch (Exception e) {
            Debug.INSTANCE.m32045e(getClass(), e);
        }
    }

    @Override // android.text.TextWatcher
    public synchronized void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        String str = this.f40084k0;
        if (str == null) {
            str = "";
        }
        if (!this.f40101x && !charSequence.toString().equals(str)) {
            this.f40081O = getSelectionStart();
            this.f40082Q = getSelectionEnd();
            String charSequence2 = charSequence.toString();
            this.f40084k0 = charSequence2;
            this.f40091q0 = charSequence2;
            this.f40095t0 = cloneSpannable();
        }
        this.f40085l = true;
        this.f40080J = charSequence.length();
    }

    public Spannable cloneSpannable() {
        CharSequence text = super.getText();
        if (text == null) {
            text = "";
        }
        return new ClonedSpannableString(text);
    }

    /* renamed from: d */
    public final void m31522d() {
        Editable text = getText();
        if (text.getSpans(0, text.length(), getClass()) != null) {
            text.setSpan(this, 0, text.length(), 18);
        }
    }

    /* renamed from: e */
    public final <V, C extends RTSpan<V>> void m31523e(Effect<V, C> effect, V v) {
        if (!this.f40083k || this.f40088o || this.f40087n) {
            return;
        }
        Spannable cloneSpannable = this.f40101x ? null : cloneSpannable();
        effect.applyToSelection(this, v);
        synchronized (this) {
            if (this.f40092r != null && !this.f40101x) {
                this.f40092r.onTextChanged(this, cloneSpannable, cloneSpannable(), getSelectionStart(), getSelectionEnd(), getSelectionStart(), getSelectionEnd());
            }
            this.f40085l = true;
        }
    }

    /* renamed from: f */
    public final void m31524f() {
        if (this.f40093s == null) {
            throw new IllegalStateException("The RTMediaFactory is null. Please make sure to register the editor at the RTManager before using it.");
        }
    }

    /* renamed from: g */
    public final void m31525g() {
        Editable text = getText();
        if (text == null) {
            return;
        }
        int min = Math.min(getSelectionStart(), getSelectionEnd());
        int max = Math.max(getSelectionStart(), getSelectionEnd());
        if (max > min) {
            String charSequence = text.subSequence(min, max).toString();
            if (StringUtils.isEmpty(charSequence)) {
                return;
            }
            ClipboardUtils.copyText(charSequence);
            setSelection(max);
            return;
        }
        Debug.INSTANCE.m32044e(getClass(), "invalid selection when copy text, start=" + min + ", end=" + max, new Object[0]);
    }

    public ArrayList<Paragraph> getParagraphs() {
        return getRTLayout().getParagraphs();
    }

    public Selection getParagraphsInSelection() {
        RTLayout rTLayout = getRTLayout();
        Selection selection = new Selection(this);
        int lineForOffset = rTLayout.getLineForOffset(selection.start());
        boolean isEmpty = selection.isEmpty();
        int end = selection.end();
        if (!isEmpty) {
            end--;
        }
        return new Selection(rTLayout.getLineStart(lineForOffset), rTLayout.getLineEnd(rTLayout.getLineForOffset(end)));
    }

    public RTText getRichText(RTFormat rTFormat) {
        m31524f();
        return new RTEditable(this).convertTo(rTFormat, this.f40093s);
    }

    public String getSelectedText() {
        Editable text = getText();
        Selection selection = getSelection();
        if (selection.start() < 0 || selection.end() < 0 || selection.end() > text.length()) {
            return null;
        }
        return text.subSequence(selection.start(), selection.end()).toString();
    }

    public Selection getSelection() {
        return new Selection(getSelectionStart(), getSelectionEnd());
    }

    public String getText(RTFormat rTFormat) {
        return getRichText(rTFormat).getText().toString();
    }

    public String getTextWithComposing(RTFormat rTFormat) {
        return new RTEditable(this).setCleanComposing(false).convertTo(rTFormat, this.f40093s).getText().toString();
    }

    /* renamed from: h */
    public synchronized void m31526h() {
        this.f40101x = true;
    }

    public boolean hasChanged() {
        return this.f40089p;
    }

    /* renamed from: i */
    public final void m31527i() {
        addTextChangedListener(this);
        setMovementMethod(RTEditorMovementMethod.getInstance());
    }

    /* renamed from: j */
    public void m31528j(RTMedia rTMedia) {
        this.f40099v0.add(rTMedia);
    }

    /* renamed from: k */
    public void m31529k(boolean z) {
        Set<RTMedia> hashSet = new HashSet<>();
        Editable text = getText();
        for (MediaSpan mediaSpan : (MediaSpan[]) text.getSpans(0, text.length(), MediaSpan.class)) {
            hashSet.add(mediaSpan.getMedia());
        }
        Set<RTMedia> set = z ? this.f40097u0 : hashSet;
        set.addAll(this.f40099v0);
        if (!z) {
            hashSet = this.f40097u0;
        }
        for (RTMedia rTMedia : set) {
            if (!hashSet.contains(rTMedia)) {
                rTMedia.remove();
            }
        }
    }

    /* renamed from: l */
    public void m31530l(RTEditTextListener rTEditTextListener, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory) {
        this.f40092r = rTEditTextListener;
        this.f40093s = rTMediaFactory;
    }

    /* renamed from: m */
    public synchronized void m31531m() {
        this.f40101x = false;
    }

    /* renamed from: n */
    public final boolean m31532n() {
        ClipData primaryClip;
        Editable text;
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        if (!clipboardManager.hasPrimaryClip() || (primaryClip = clipboardManager.getPrimaryClip()) == null || (text = getText()) == null) {
            return false;
        }
        int min = Math.min(getSelectionStart(), getSelectionEnd());
        int max = Math.max(getSelectionStart(), getSelectionEnd());
        if (max < min || min < 0) {
            Debug.INSTANCE.m32044e(getClass(), "invalid selection when read paste text, start=" + min + ", end=" + max, new Object[0]);
            return false;
        }
        ClipData.Item itemAt = primaryClip.getItemAt(0);
        if (itemAt == null || StringUtils.isEmpty(itemAt.getText())) {
            return false;
        }
        String charSequence = itemAt.getText().toString();
        Debug.INSTANCE.m32035d(getClass(), "read clipboard text: " + charSequence, new Object[0]);
        text.replace(min, max, charSequence);
        return true;
    }

    /* renamed from: o */
    public void m31533o() {
        this.f40092r = null;
    }

    @Override // com.onegravity.rteditor.spans.LinkSpan.LinkSpanListener
    public void onClick(LinkSpan linkSpan) {
        RTEditTextListener rTEditTextListener;
        if (!this.f40083k || (rTEditTextListener = this.f40092r) == null) {
            return;
        }
        rTEditTextListener.onClick(this, linkSpan);
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        RTEditTextListener rTEditTextListener;
        super.onFocusChanged(z, i, rect);
        if (!this.f40083k || (rTEditTextListener = this.f40092r) == null) {
            return;
        }
        rTEditTextListener.onFocusChanged(this, z);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (RTRichTextExtKt.handleDeleteKey(this, i)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            setRichTextEditing(savedState.useRTFormatting(), savedState.getContent());
        } else {
            super.onRestoreInstanceState(parcelable);
        }
        RTEditTextListener rTEditTextListener = this.f40092r;
        if (rTEditTextListener != null) {
            rTEditTextListener.onRestoredInstanceState(this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        this.f40087n = true;
        SavedState savedState = new SavedState(super.onSaveInstanceState(), this.f40083k, getText(this.f40083k ? RTFormat.HTML : RTFormat.PLAIN_TEXT));
        this.f40087n = false;
        return savedState;
    }

    @Override // android.widget.TextView
    public void onSelectionChanged(int i, int i2) {
        if (this.f40094t == i && this.f40096u == i2) {
            return;
        }
        this.f40094t = i;
        this.f40096u = i2;
        this.f40090q = i2 > i;
        super.onSelectionChanged(i, i2);
        if (this.f40083k) {
            if (!this.f40087n && !this.f40098v) {
                this.f40100w = true;
                Effects.cleanupParagraphs(this, new Effect[0]);
                this.f40100w = false;
                setParagraphsAreUp2Date(true);
            }
            RTEditTextListener rTEditTextListener = this.f40092r;
            if (rTEditTextListener != null) {
                this.f40088o = true;
                rTEditTextListener.onSelectionChanged(this, i, i2);
                this.f40088o = false;
            }
        }
    }

    @Override // android.text.SpanWatcher
    public void onSpanAdded(Spannable spannable, Object obj, int i, int i2) {
        this.f40089p = true;
        if (obj instanceof BulletSpan) {
            this.f40102y = true;
            if (spannable.toString().isEmpty()) {
                append("\u200b");
            }
        } else if (obj instanceof NumberSpan) {
            this.f40103z = true;
            if (spannable.toString().isEmpty()) {
                append("\u200b");
            }
        }
        if ((obj instanceof RTSpan) && (obj instanceof ParagraphStyle)) {
            setParagraphsAreUp2Date(false);
        }
    }

    @Override // android.text.SpanWatcher
    public void onSpanChanged(Spannable spannable, Object obj, int i, int i2, int i3, int i4) {
        this.f40089p = true;
        if ((obj instanceof RTSpan) && (obj instanceof ParagraphStyle)) {
            setParagraphsAreUp2Date(false);
        }
    }

    @Override // android.text.SpanWatcher
    public void onSpanRemoved(Spannable spannable, Object obj, int i, int i2) {
        this.f40089p = true;
        if (obj instanceof BulletSpan) {
            this.f40102y = false;
        } else if (obj instanceof NumberSpan) {
            this.f40103z = false;
        }
        if ((obj instanceof RTSpan) && (obj instanceof ParagraphStyle)) {
            setParagraphsAreUp2Date(false);
        }
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public synchronized void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f40085l = true;
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.EditText, android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        switch (i) {
            case android.R.id.copy:
                m31525g();
                return true;
            case android.R.id.paste:
                if (m31532n()) {
                    return true;
                }
                break;
        }
        return super.onTextContextMenuItem(i);
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        if (this.f40083k && !z && this.f40090q) {
            return;
        }
        super.onWindowFocusChanged(z);
    }

    public void resetHasChanged() {
        this.f40089p = false;
        setParagraphsAreUp2Date(false);
    }

    public void setRichTextEditing(boolean z, boolean z2) {
        m31524f();
        if (z != this.f40083k) {
            this.f40083k = z;
            if (z2) {
                setText(getRichText(z ? RTFormat.PLAIN_TEXT : RTFormat.HTML));
            }
            RTEditTextListener rTEditTextListener = this.f40092r;
            if (rTEditTextListener != null) {
                rTEditTextListener.onRichTextEditingChanged(this, this.f40083k);
            }
        }
    }

    public void setText(RTText rTText) {
        m31524f();
        if (rTText.getFormat() instanceof RTFormat.Html) {
            if (this.f40083k) {
                super.setText(rTText.convertTo(RTFormat.SPANNED, this.f40093s).getText(), TextView.BufferType.EDITABLE);
                m31522d();
                Editable text = getText();
                for (MediaSpan mediaSpan : (MediaSpan[]) text.getSpans(0, text.length(), MediaSpan.class)) {
                    this.f40097u0.add(mediaSpan.getMedia());
                }
                Effects.cleanupParagraphs(this, new Effect[0]);
            } else {
                super.setText(rTText.convertTo(RTFormat.PLAIN_TEXT, this.f40093s).getText());
            }
        } else if (rTText.getFormat() instanceof RTFormat.PlainText) {
            CharSequence text2 = rTText.getText();
            super.setText(text2 == null ? "" : text2.toString());
        }
        onSelectionChanged(0, 0);
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback, int i) {
        return super.startActionMode(new RTActionModeCallback(callback), 1);
    }

    public boolean usesRTFormatting() {
        return this.f40083k;
    }

    public void setRichTextEditing(boolean z, String str) {
        RTText rTPlainText;
        m31524f();
        if (z != this.f40083k) {
            this.f40083k = z;
            RTEditTextListener rTEditTextListener = this.f40092r;
            if (rTEditTextListener != null) {
                rTEditTextListener.onRichTextEditingChanged(this, z);
            }
        }
        if (z) {
            rTPlainText = new RTHtml(RTFormat.HTML, str);
        } else {
            rTPlainText = new RTPlainText(str);
        }
        setText(rTPlainText);
    }

    public RTEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40083k = true;
        this.f40088o = false;
        this.f40094t = -1;
        this.f40096u = -1;
        this.f40097u0 = new HashSet();
        this.f40099v0 = new HashSet();
        m31527i();
    }

    public RTEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f40083k = true;
        this.f40088o = false;
        this.f40094t = -1;
        this.f40096u = -1;
        this.f40097u0 = new HashSet();
        this.f40099v0 = new HashSet();
        m31527i();
    }
}
