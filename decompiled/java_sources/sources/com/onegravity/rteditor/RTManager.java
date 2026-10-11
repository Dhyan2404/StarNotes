package com.onegravity.rteditor;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.Layout;
import android.text.Spannable;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.onegravity.rteditor.C7033a;
import com.onegravity.rteditor.LinkFragment;
import com.onegravity.rteditor.api.RTApi;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTMedia;
import com.onegravity.rteditor.effects.AbsoluteSizeEffect;
import com.onegravity.rteditor.effects.AlignmentEffect;
import com.onegravity.rteditor.effects.BackgroundColorEffect;
import com.onegravity.rteditor.effects.BoldEffect;
import com.onegravity.rteditor.effects.BulletEffect;
import com.onegravity.rteditor.effects.Effect;
import com.onegravity.rteditor.effects.Effects;
import com.onegravity.rteditor.effects.ForegroundColorEffect;
import com.onegravity.rteditor.effects.ItalicEffect;
import com.onegravity.rteditor.effects.NumberEffect;
import com.onegravity.rteditor.effects.SpanCollectMode;
import com.onegravity.rteditor.effects.StrikethroughEffect;
import com.onegravity.rteditor.effects.SubscriptEffect;
import com.onegravity.rteditor.effects.SuperscriptEffect;
import com.onegravity.rteditor.effects.TypefaceEffect;
import com.onegravity.rteditor.effects.UnderlineEffect;
import com.onegravity.rteditor.fonts.RTTypeface;
import com.onegravity.rteditor.media.choose.MediaChooserActivity;
import com.onegravity.rteditor.media.choose.MediaEvent;
import com.onegravity.rteditor.spans.ImageSpan;
import com.onegravity.rteditor.spans.LinkSpan;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Constants;
import com.onegravity.rteditor.utils.Helper;
import com.onegravity.rteditor.utils.Selection;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes7.dex */
public class RTManager implements RTToolbarListener, RTEditTextListener {

    /* renamed from: l */
    public static final String f40106l = "ID_01_LINK_FRAGMENT";

    /* renamed from: a */
    public ToolbarVisibility f40107a;

    /* renamed from: b */
    public boolean f40108b;

    /* renamed from: c */
    public int f40109c;

    /* renamed from: d */
    public Selection f40110d;

    /* renamed from: f */
    public transient boolean f40112f;

    /* renamed from: g */
    public transient boolean f40113g;

    /* renamed from: j */
    public transient RTApi f40116j;

    /* renamed from: e */
    public final transient Handler f40111e = new Handler(Looper.getMainLooper());

    /* renamed from: h */
    public final transient Map<Integer, RTEditText> f40114h = new ConcurrentHashMap();

    /* renamed from: i */
    public final transient Map<Integer, RTToolbar> f40115i = new ConcurrentHashMap();

    /* renamed from: k */
    public final transient C7033a f40117k = new C7033a();

    /* loaded from: classes7.dex */
    public enum ToolbarVisibility {
        AUTOMATIC,
        SHOW,
        HIDE
    }

    /* renamed from: com.onegravity.rteditor.RTManager$a */
    /* loaded from: classes7.dex */
    public class AnimationAnimationListenerC7031a implements Animation.AnimationListener {

        /* renamed from: e */
        public final /* synthetic */ ViewGroup f40118e;

        public AnimationAnimationListenerC7031a(ViewGroup viewGroup) {
            this.f40118e = viewGroup;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            synchronized (this.f40118e) {
                this.f40118e.setVisibility(RTManager.this.f40108b ? 0 : 8);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.onegravity.rteditor.RTManager$b */
    /* loaded from: classes7.dex */
    public class RunnableC7032b implements Runnable {
        public RunnableC7032b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RTManager.this.m31539c();
        }
    }

    public RTManager(RTApi rTApi, Bundle bundle) {
        this.f40107a = ToolbarVisibility.AUTOMATIC;
        this.f40109c = Integer.MAX_VALUE;
        this.f40116j = rTApi;
        if (bundle != null) {
            String string = bundle.getString("mToolbarVisibility");
            if (string != null) {
                this.f40107a = ToolbarVisibility.valueOf(string);
            }
            this.f40108b = bundle.getBoolean("mToolbarIsVisible");
            this.f40109c = bundle.getInt("mActiveEditor");
            this.f40110d = (Selection) bundle.getSerializable("mLinkSelection");
        }
        EventBusHolderKt.ensureRegister(m31541e(), this);
    }

    /* renamed from: c */
    public final void m31539c() {
        synchronized (this) {
            if (!this.f40113g) {
                m31546j();
            }
            this.f40113g = false;
            this.f40112f = false;
        }
    }

    /* renamed from: d */
    public final RTEditText m31540d() {
        for (RTEditText rTEditText : this.f40114h.values()) {
            if (rTEditText.hasFocus()) {
                return rTEditText;
            }
        }
        return null;
    }

    /* renamed from: e */
    public final EventBus m31541e() {
        return EventBus.getDefault();
    }

    /* renamed from: f */
    public final String m31542f(RTEditText rTEditText, RTSpan<String> rTSpan) {
        Editable text = rTEditText.getText();
        int spanStart = text.getSpanStart(rTSpan);
        int spanEnd = text.getSpanEnd(rTSpan);
        if (spanStart < 0 || spanEnd < 0 || spanEnd > text.length()) {
            this.f40110d = rTEditText.getSelection();
            return null;
        }
        String charSequence = text.subSequence(spanStart, spanEnd).toString();
        this.f40110d = new Selection(spanStart, spanEnd);
        return charSequence;
    }

    /* renamed from: g */
    public final void m31543g(RTEditText rTEditText, RTImage rTImage) {
        if (rTImage == null || rTEditText == null) {
            return;
        }
        Selection selection = new Selection(rTEditText);
        Editable text = rTEditText.getText();
        text.insert(selection.start(), "￼");
        try {
            Spannable cloneSpannable = rTEditText.cloneSpannable();
            text.setSpan(new ImageSpan(rTImage, false), selection.start(), selection.end() + 1, 33);
            int selectionStart = rTEditText.getSelectionStart();
            int selectionEnd = rTEditText.getSelectionEnd();
            rTEditText.m31528j(rTImage);
            this.f40117k.m31547a(rTEditText, new C7033a.b(cloneSpannable, rTEditText.cloneSpannable(), selection.start(), selection.end(), selectionStart, selectionEnd));
        } catch (OutOfMemoryError unused) {
            text.delete(selection.start(), selection.end() + 1);
            this.f40116j.makeText(C7028R.string.rte_add_image_error, 1).show();
        }
    }

    /* renamed from: h */
    public final void m31544h(Constants.MediaAction mediaAction) {
        RTEditText m31540d = m31540d();
        if (m31540d == null || this.f40116j == null) {
            return;
        }
        this.f40109c = m31540d.getId();
        this.f40116j.startActivityForResult(new Intent(RTApi.getApplicationContext(), (Class<?>) MediaChooserActivity.class).putExtra(MediaChooserActivity.EXTRA_MEDIA_ACTION, mediaAction.name()).putExtra(MediaChooserActivity.EXTRA_MEDIA_FACTORY, this.f40116j), mediaAction.requestCode());
    }

    /* renamed from: i */
    public final void m31545i(RTToolbar rTToolbar, boolean z) {
        int visibility;
        this.f40108b = z;
        ViewGroup toolbarContainer = rTToolbar.getToolbarContainer();
        synchronized (toolbarContainer) {
            visibility = toolbarContainer.getVisibility();
        }
        if (!(visibility == 8 && z) && (visibility != 0 || z)) {
            toolbarContainer.clearAnimation();
            return;
        }
        AlphaAnimation alphaAnimation = z ? new AlphaAnimation(0.0f, 1.0f) : new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(400L);
        alphaAnimation.setAnimationListener(new AnimationAnimationListenerC7031a(toolbarContainer));
        toolbarContainer.startAnimation(alphaAnimation);
    }

    /* renamed from: j */
    public final void m31546j() {
        ToolbarVisibility toolbarVisibility = this.f40107a;
        boolean z = toolbarVisibility == ToolbarVisibility.SHOW;
        if (toolbarVisibility == ToolbarVisibility.AUTOMATIC) {
            RTEditText m31540d = m31540d();
            z = m31540d != null && m31540d.usesRTFormatting();
        }
        Iterator<RTToolbar> it2 = this.f40115i.values().iterator();
        while (it2.hasNext()) {
            m31545i(it2.next(), z);
        }
    }

    @Override // com.onegravity.rteditor.RTToolbarListener
    public void onCaptureImage() {
        m31544h(Constants.MediaAction.CAPTURE_PICTURE);
    }

    @Override // com.onegravity.rteditor.RTToolbarListener
    public void onClearFormatting() {
        RTEditText m31540d = m31540d();
        if (m31540d != null) {
            int selectionStart = m31540d.getSelectionStart();
            int selectionEnd = m31540d.getSelectionEnd();
            Spannable cloneSpannable = m31540d.cloneSpannable();
            Iterator<Effect> it2 = Effects.FORMATTING_EFFECTS.iterator();
            while (it2.hasNext()) {
                it2.next().clearFormattingInSelection(m31540d);
            }
            int selectionStart2 = m31540d.getSelectionStart();
            int selectionEnd2 = m31540d.getSelectionEnd();
            this.f40117k.m31547a(m31540d, new C7033a.b(cloneSpannable, m31540d.cloneSpannable(), selectionStart, selectionEnd, selectionStart2, selectionEnd2));
        }
    }

    @Override // com.onegravity.rteditor.RTEditTextListener
    public void onClick(RTEditText rTEditText, LinkSpan linkSpan) {
        if (rTEditText != null) {
            this.f40116j.openDialogFragment(f40106l, LinkFragment.newInstance(m31542f(rTEditText, linkSpan), linkSpan.getURL()));
        }
    }

    @Override // com.onegravity.rteditor.RTToolbarListener
    public void onCreateLink() {
        String value;
        String m31542f;
        RTEditText m31540d = m31540d();
        if (m31540d != null) {
            List<RTSpan<String>> spans = Effects.LINK.getSpans(m31540d.getText(), new Selection(m31540d), SpanCollectMode.EXACT);
            if (spans.isEmpty()) {
                m31542f = m31540d.getSelectedText();
                try {
                    new URL(m31542f);
                    value = m31542f;
                } catch (MalformedURLException unused) {
                    value = null;
                }
                this.f40110d = m31540d.getSelection();
            } else {
                RTSpan<String> rTSpan = spans.get(0);
                value = rTSpan.getValue();
                m31542f = m31542f(m31540d, rTSpan);
            }
            this.f40116j.openDialogFragment(f40106l, LinkFragment.newInstance(m31542f, value));
        }
    }

    public void onDestroy(boolean z) {
        EventBusHolderKt.ensureUnRegister(m31541e(), this);
        for (RTEditText rTEditText : this.f40114h.values()) {
            rTEditText.m31533o();
            rTEditText.m31529k(z);
        }
        this.f40114h.clear();
        Iterator<RTToolbar> it2 = this.f40115i.values().iterator();
        while (it2.hasNext()) {
            it2.next().removeToolbarListener();
        }
        this.f40115i.clear();
        this.f40116j = null;
    }

    @Override // com.onegravity.rteditor.RTToolbarListener
    public <V, C extends RTSpan<V>> void onEffectSelected(Effect<V, C> effect, V v) {
        RTEditText m31540d = m31540d();
        if (m31540d != null) {
            m31540d.applyEffect(effect, v);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onEventMainThread(MediaEvent mediaEvent) {
        RTEditText rTEditText = this.f40114h.get(Integer.valueOf(this.f40109c));
        RTMedia media = mediaEvent.getMedia();
        if (rTEditText == null || !(media instanceof RTImage)) {
            return;
        }
        m31543g(rTEditText, (RTImage) media);
        m31541e().removeStickyEvent(mediaEvent);
        this.f40109c = Integer.MAX_VALUE;
    }

    @Override // com.onegravity.rteditor.RTEditTextListener
    public void onFocusChanged(RTEditText rTEditText, boolean z) {
        if (rTEditText.usesRTFormatting()) {
            synchronized (this) {
                if (this.f40112f) {
                    this.f40113g = true;
                }
            }
            if (z) {
                m31539c();
            } else {
                this.f40112f = true;
                this.f40111e.postDelayed(new RunnableC7032b(), 10L);
            }
        }
    }

    @Override // com.onegravity.rteditor.RTToolbarListener
    public void onPickImage() {
        m31544h(Constants.MediaAction.PICK_PICTURE);
    }

    @Override // com.onegravity.rteditor.RTToolbarListener
    public void onRedo() {
        RTEditText m31540d = m31540d();
        if (m31540d != null) {
            this.f40117k.m31553g(m31540d);
        }
    }

    @Override // com.onegravity.rteditor.RTEditTextListener
    public void onRestoredInstanceState(RTEditText rTEditText) {
        MediaEvent mediaEvent = (MediaEvent) EventBus.getDefault().getStickyEvent(MediaEvent.class);
        if (mediaEvent != null) {
            onEventMainThread(mediaEvent);
        }
    }

    @Override // com.onegravity.rteditor.RTEditTextListener
    public void onRichTextEditingChanged(RTEditText rTEditText, boolean z) {
        m31546j();
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putString("mToolbarVisibility", this.f40107a.name());
        bundle.putBoolean("mToolbarIsVisible", this.f40108b);
        bundle.putInt("mActiveEditor", this.f40109c);
        Selection selection = this.f40110d;
        if (selection != null) {
            bundle.putSerializable("mLinkSelection", selection);
        }
    }

    @Override // com.onegravity.rteditor.RTEditTextListener
    public void onSelectionChanged(RTEditText rTEditText, int i, int i2) {
        Iterator<RTToolbar> it2;
        int i3;
        if (rTEditText == null) {
            return;
        }
        Iterator<Effect> it3 = Effects.ALL_EFFECTS.iterator();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        List<Layout.Alignment> list = null;
        List<RTTypeface> list2 = null;
        List<Integer> list3 = null;
        List<Integer> list4 = null;
        List<Integer> list5 = null;
        while (it3.hasNext()) {
            Effect next = it3.next();
            if (next.existsInSelection(rTEditText)) {
                if (next instanceof BoldEffect) {
                    z = true;
                } else if (next instanceof ItalicEffect) {
                    z2 = true;
                } else if (next instanceof UnderlineEffect) {
                    z3 = true;
                } else if (next instanceof StrikethroughEffect) {
                    z4 = true;
                } else if (next instanceof SuperscriptEffect) {
                    z5 = true;
                } else if (next instanceof SubscriptEffect) {
                    z6 = true;
                } else if (next instanceof BulletEffect) {
                    z7 = true;
                } else if (next instanceof NumberEffect) {
                    z8 = true;
                } else if (next instanceof AlignmentEffect) {
                    list = Effects.ALIGNMENT.valuesInSelection(rTEditText);
                } else if (next instanceof TypefaceEffect) {
                    list2 = Effects.TYPEFACE.valuesInSelection(rTEditText);
                } else if (next instanceof AbsoluteSizeEffect) {
                    list3 = Effects.FONTSIZE.valuesInSelection(rTEditText);
                } else if (next instanceof ForegroundColorEffect) {
                    list4 = Effects.FONTCOLOR.valuesInSelection(rTEditText);
                } else if (next instanceof BackgroundColorEffect) {
                    list5 = Effects.BGCOLOR.valuesInSelection(rTEditText);
                }
            }
        }
        Iterator<RTToolbar> it4 = this.f40115i.values().iterator();
        while (it4.hasNext()) {
            RTToolbar next2 = it4.next();
            next2.setBold(z);
            next2.setItalic(z2);
            next2.setUnderline(z3);
            next2.setStrikethrough(z4);
            next2.setSuperscript(z5);
            next2.setSubscript(z6);
            next2.setBullet(z7);
            next2.setNumber(z8);
            if (list == null || list.size() != 1) {
                it2 = it4;
                next2.setAlignment(Helper.isRTL(rTEditText.getText(), i, i2) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL);
            } else {
                next2.setAlignment(list.get(0));
                it2 = it4;
            }
            if (list2 == null || list2.size() != 1) {
                next2.setFont(null);
            } else {
                next2.setFont(list2.get(0));
            }
            if (list3 == null) {
                next2.setFontSize(Math.round(rTEditText.getTextSize()));
                i3 = 1;
            } else {
                i3 = 1;
                if (list3.size() == 1) {
                    next2.setFontSize(list3.get(0).intValue());
                } else {
                    next2.setFontSize(-1);
                }
            }
            if (list4 == null || list4.size() != i3) {
                next2.removeFontColor();
            } else {
                next2.setFontColor(list4.get(0).intValue());
            }
            List<Integer> list6 = list5;
            if (list6 != null && list6.size() == 1) {
                next2.setBGColor(list6.get(0).intValue());
                it4 = it2;
                list5 = list6;
            }
            next2.removeBGColor();
            it4 = it2;
            list5 = list6;
        }
    }

    @Override // com.onegravity.rteditor.RTEditTextListener
    public void onTextChanged(RTEditText rTEditText, Spannable spannable, Spannable spannable2, int i, int i2, int i3, int i4) {
        this.f40117k.m31547a(rTEditText, new C7033a.b(spannable, spannable2, i, i2, i3, i4));
    }

    @Override // com.onegravity.rteditor.RTToolbarListener
    public void onUndo() {
        RTEditText m31540d = m31540d();
        if (m31540d != null) {
            this.f40117k.m31554h(m31540d);
        }
    }

    public void registerEditor(RTEditText rTEditText, boolean z) {
        this.f40114h.put(Integer.valueOf(rTEditText.getId()), rTEditText);
        rTEditText.m31530l(this, this.f40116j);
        rTEditText.setRichTextEditing(z, false);
        m31546j();
    }

    public void registerToolbar(ViewGroup viewGroup, RTToolbar rTToolbar) {
        this.f40115i.put(Integer.valueOf(rTToolbar.getId()), rTToolbar);
        rTToolbar.setToolbarListener(this);
        rTToolbar.setToolbarContainer(viewGroup);
        m31546j();
    }

    public void setToolbarVisibility(ToolbarVisibility toolbarVisibility) {
        if (this.f40107a != toolbarVisibility) {
            this.f40107a = toolbarVisibility;
            m31546j();
        }
    }

    public void unregisterEditor(RTEditText rTEditText) {
        this.f40114h.remove(Integer.valueOf(rTEditText.getId()));
        rTEditText.m31533o();
        m31546j();
    }

    public void unregisterToolbar(RTToolbar rTToolbar) {
        this.f40115i.remove(Integer.valueOf(rTToolbar.getId()));
        rTToolbar.removeToolbarListener();
        m31546j();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(LinkFragment.C7027c c7027c) {
        RTEditText m31540d;
        String str;
        String m31519a = c7027c.m31519a();
        this.f40116j.removeFragment(m31519a);
        if (c7027c.m31521c() || !f40106l.equals(m31519a) || (m31540d = m31540d()) == null) {
            return;
        }
        LinkFragment.C7026b m31520b = c7027c.m31520b();
        if (m31520b == null || !m31520b.m31518c()) {
            str = null;
        } else {
            Selection selection = this.f40110d;
            Selection selection2 = (selection == null || selection.end() > m31540d.length()) ? new Selection(m31540d) : this.f40110d;
            String m31516a = m31520b.m31516a();
            m31540d.getText().replace(selection2.start(), selection2.end(), m31516a);
            m31540d.setSelection(selection2.start(), selection2.start() + m31516a.length());
            str = m31520b.m31517b();
        }
        m31540d.applyEffect(Effects.LINK, str);
    }
}
