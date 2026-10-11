package androidx.core.view.accessibility;

import android.R;
import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.C0512R;
import androidx.core.os.BuildCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import java.lang.ref.WeakReference;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class AccessibilityNodeInfoCompat {
    public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
    public static final String ACTION_ARGUMENT_COLUMN_INT = "android.view.accessibility.action.ARGUMENT_COLUMN_INT";
    public static final String ACTION_ARGUMENT_DIRECTION_INT = "androidx.core.view.accessibility.action.ARGUMENT_DIRECTION_INT";
    public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
    public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
    public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_X = "ACTION_ARGUMENT_MOVE_WINDOW_X";
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_Y = "ACTION_ARGUMENT_MOVE_WINDOW_Y";

    @SuppressLint({"ActionValue"})
    public static final String ACTION_ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT = "android.view.accessibility.action.ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT";
    public static final String ACTION_ARGUMENT_PROGRESS_VALUE = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE";
    public static final String ACTION_ARGUMENT_ROW_INT = "android.view.accessibility.action.ARGUMENT_ROW_INT";
    public static final String ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT = "androidx.core.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT";
    public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
    public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
    public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE";
    public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
    public static final int ACTION_CLEAR_FOCUS = 2;
    public static final int ACTION_CLEAR_SELECTION = 8;
    public static final int ACTION_CLICK = 16;
    public static final int ACTION_COLLAPSE = 524288;
    public static final int ACTION_COPY = 16384;
    public static final int ACTION_CUT = 65536;
    public static final int ACTION_DISMISS = 1048576;
    public static final int ACTION_EXPAND = 262144;
    public static final int ACTION_FOCUS = 1;
    public static final int ACTION_LONG_CLICK = 32;
    public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
    public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
    public static final int ACTION_PASTE = 32768;
    public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
    public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
    public static final int ACTION_SCROLL_BACKWARD = 8192;
    public static final int ACTION_SCROLL_FORWARD = 4096;
    public static final int ACTION_SELECT = 4;
    public static final int ACTION_SET_SELECTION = 131072;
    public static final int ACTION_SET_TEXT = 2097152;
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH = "android.core.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH";
    public static final int EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH = 20000;
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX = "android.core.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX";
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY = "android.core.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY";
    public static final int FLAG_PREFETCH_ANCESTORS = 1;
    public static final int FLAG_PREFETCH_DESCENDANTS_BREADTH_FIRST = 16;
    public static final int FLAG_PREFETCH_DESCENDANTS_DEPTH_FIRST = 8;
    public static final int FLAG_PREFETCH_DESCENDANTS_HYBRID = 4;
    public static final int FLAG_PREFETCH_SIBLINGS = 2;
    public static final int FLAG_PREFETCH_UNINTERRUPTIBLE = 32;
    public static final int FOCUS_ACCESSIBILITY = 2;
    public static final int FOCUS_INPUT = 1;

    @SuppressLint({"MinMaxConstant"})
    public static final int MAX_NUMBER_OF_PREFETCHED_NODES = 50;
    public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
    public static final int MOVEMENT_GRANULARITY_LINE = 4;
    public static final int MOVEMENT_GRANULARITY_PAGE = 16;
    public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
    public static final int MOVEMENT_GRANULARITY_WORD = 2;

    /* renamed from: c */
    public static final String f6020c = "AccessibilityNodeInfo.roleDescription";

    /* renamed from: d */
    public static final String f6021d = "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY";

    /* renamed from: e */
    public static final String f6022e = "androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY";

    /* renamed from: f */
    public static final String f6023f = "androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY";

    /* renamed from: g */
    public static final String f6024g = "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY";

    /* renamed from: h */
    public static final String f6025h = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY";

    /* renamed from: i */
    public static final String f6026i = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY";

    /* renamed from: j */
    public static final String f6027j = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY";

    /* renamed from: k */
    public static final String f6028k = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY";

    /* renamed from: l */
    public static final String f6029l = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY";

    /* renamed from: m */
    public static final String f6030m = "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY";

    /* renamed from: n */
    public static final String f6031n = "androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY";

    /* renamed from: o */
    public static final String f6032o = "androidx.view.accessibility.AccessibilityNodeInfoCompat.CONTAINER_TITLE_KEY";

    /* renamed from: p */
    public static final String f6033p = "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOUNDS_IN_WINDOW_KEY";

    /* renamed from: q */
    public static final String f6034q = "androidx.view.accessibility.AccessibilityNodeInfoCompat.MIN_DURATION_BETWEEN_CONTENT_CHANGES_KEY";

    /* renamed from: r */
    public static final int f6035r = 1;

    /* renamed from: s */
    public static final int f6036s = 2;

    /* renamed from: t */
    public static final int f6037t = 4;

    /* renamed from: u */
    public static final int f6038u = 8;

    /* renamed from: v */
    public static final int f6039v = 32;

    /* renamed from: w */
    public static final int f6040w = 64;

    /* renamed from: x */
    public static final int f6041x = 8388608;

    /* renamed from: y */
    public static final int f6042y = 67108864;

    /* renamed from: z */
    public static int f6043z;

    /* renamed from: a */
    public final AccessibilityNodeInfo f6044a;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int mParentVirtualDescendantId = -1;

    /* renamed from: b */
    public int f6045b = -1;

    /* loaded from: classes3.dex */
    public static class AccessibilityActionCompat {
        public static final AccessibilityActionCompat ACTION_CONTEXT_CLICK;

        @NonNull
        public static final AccessibilityActionCompat ACTION_DRAG_CANCEL;

        @NonNull
        public static final AccessibilityActionCompat ACTION_DRAG_DROP;

        @NonNull
        public static final AccessibilityActionCompat ACTION_DRAG_START;
        public static final AccessibilityActionCompat ACTION_HIDE_TOOLTIP;

        @NonNull
        public static final AccessibilityActionCompat ACTION_IME_ENTER;
        public static final AccessibilityActionCompat ACTION_MOVE_WINDOW;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_DOWN;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_LEFT;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_RIGHT;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_UP;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PRESS_AND_HOLD;
        public static final AccessibilityActionCompat ACTION_SCROLL_DOWN;

        @NonNull
        @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
        public static final AccessibilityActionCompat ACTION_SCROLL_IN_DIRECTION;
        public static final AccessibilityActionCompat ACTION_SCROLL_LEFT;
        public static final AccessibilityActionCompat ACTION_SCROLL_RIGHT;
        public static final AccessibilityActionCompat ACTION_SCROLL_TO_POSITION;
        public static final AccessibilityActionCompat ACTION_SCROLL_UP;
        public static final AccessibilityActionCompat ACTION_SET_PROGRESS;
        public static final AccessibilityActionCompat ACTION_SHOW_ON_SCREEN;

        @NonNull
        public static final AccessibilityActionCompat ACTION_SHOW_TEXT_SUGGESTIONS;
        public static final AccessibilityActionCompat ACTION_SHOW_TOOLTIP;

        /* renamed from: d */
        public static final String f6046d = "A11yActionCompat";

        /* renamed from: a */
        public final Object f6047a;

        /* renamed from: b */
        public final int f6048b;

        /* renamed from: c */
        public final Class<? extends AccessibilityViewCommand.CommandArguments> f6049c;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected final AccessibilityViewCommand mCommand;
        public static final AccessibilityActionCompat ACTION_FOCUS = new AccessibilityActionCompat(1, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_FOCUS = new AccessibilityActionCompat(2, null);
        public static final AccessibilityActionCompat ACTION_SELECT = new AccessibilityActionCompat(4, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_SELECTION = new AccessibilityActionCompat(8, null);
        public static final AccessibilityActionCompat ACTION_CLICK = new AccessibilityActionCompat(16, null);
        public static final AccessibilityActionCompat ACTION_LONG_CLICK = new AccessibilityActionCompat(32, null);
        public static final AccessibilityActionCompat ACTION_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(64, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(128, null);
        public static final AccessibilityActionCompat ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(256, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveAtGranularityArguments.class);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(512, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveAtGranularityArguments.class);
        public static final AccessibilityActionCompat ACTION_NEXT_HTML_ELEMENT = new AccessibilityActionCompat(1024, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveHtmlArguments.class);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityActionCompat(2048, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveHtmlArguments.class);
        public static final AccessibilityActionCompat ACTION_SCROLL_FORWARD = new AccessibilityActionCompat(4096, null);
        public static final AccessibilityActionCompat ACTION_SCROLL_BACKWARD = new AccessibilityActionCompat(8192, null);
        public static final AccessibilityActionCompat ACTION_COPY = new AccessibilityActionCompat(16384, null);
        public static final AccessibilityActionCompat ACTION_PASTE = new AccessibilityActionCompat(32768, null);
        public static final AccessibilityActionCompat ACTION_CUT = new AccessibilityActionCompat(65536, null);
        public static final AccessibilityActionCompat ACTION_SET_SELECTION = new AccessibilityActionCompat(131072, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.SetSelectionArguments.class);
        public static final AccessibilityActionCompat ACTION_EXPAND = new AccessibilityActionCompat(262144, null);
        public static final AccessibilityActionCompat ACTION_COLLAPSE = new AccessibilityActionCompat(524288, null);
        public static final AccessibilityActionCompat ACTION_DISMISS = new AccessibilityActionCompat(1048576, null);
        public static final AccessibilityActionCompat ACTION_SET_TEXT = new AccessibilityActionCompat(2097152, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.SetTextArguments.class);

        static {
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction2;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction3;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction4;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction5;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction6;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction7;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction8;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction9;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction10;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction11;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction12;
            int i = Build.VERSION.SDK_INT;
            ACTION_SHOW_ON_SCREEN = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, R.id.accessibilityActionShowOnScreen, null, null, null);
            ACTION_SCROLL_TO_POSITION = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, R.id.accessibilityActionScrollToPosition, null, null, AccessibilityViewCommand.ScrollToPositionArguments.class);
            ACTION_SCROLL_UP = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp, null, null, null);
            ACTION_SCROLL_LEFT = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, R.id.accessibilityActionScrollLeft, null, null, null);
            ACTION_SCROLL_DOWN = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown, null, null, null);
            ACTION_SCROLL_RIGHT = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, R.id.accessibilityActionScrollRight, null, null, null);
            ACTION_PAGE_UP = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP, R.id.accessibilityActionPageUp, null, null, null);
            ACTION_PAGE_DOWN = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN, R.id.accessibilityActionPageDown, null, null, null);
            ACTION_PAGE_LEFT = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT, R.id.accessibilityActionPageLeft, null, null, null);
            ACTION_PAGE_RIGHT = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT, R.id.accessibilityActionPageRight, null, null, null);
            ACTION_CONTEXT_CLICK = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, R.id.accessibilityActionContextClick, null, null, null);
            ACTION_SET_PROGRESS = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, R.id.accessibilityActionSetProgress, null, null, AccessibilityViewCommand.SetProgressArguments.class);
            ACTION_MOVE_WINDOW = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW, R.id.accessibilityActionMoveWindow, null, null, AccessibilityViewCommand.MoveWindowArguments.class);
            ACTION_SHOW_TOOLTIP = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP, R.id.accessibilityActionShowTooltip, null, null, null);
            ACTION_HIDE_TOOLTIP = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP, R.id.accessibilityActionHideTooltip, null, null, null);
            if (i >= 30) {
                accessibilityAction12 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD;
                accessibilityAction = accessibilityAction12;
            } else {
                accessibilityAction = null;
            }
            ACTION_PRESS_AND_HOLD = new AccessibilityActionCompat(accessibilityAction, R.id.accessibilityActionPressAndHold, null, null, null);
            if (i >= 30) {
                accessibilityAction11 = AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER;
                accessibilityAction2 = accessibilityAction11;
            } else {
                accessibilityAction2 = null;
            }
            ACTION_IME_ENTER = new AccessibilityActionCompat(accessibilityAction2, R.id.accessibilityActionImeEnter, null, null, null);
            if (i >= 32) {
                accessibilityAction10 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START;
                accessibilityAction3 = accessibilityAction10;
            } else {
                accessibilityAction3 = null;
            }
            ACTION_DRAG_START = new AccessibilityActionCompat(accessibilityAction3, R.id.ALT, null, null, null);
            if (i >= 32) {
                accessibilityAction9 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP;
                accessibilityAction4 = accessibilityAction9;
            } else {
                accessibilityAction4 = null;
            }
            ACTION_DRAG_DROP = new AccessibilityActionCompat(accessibilityAction4, R.id.CTRL, null, null, null);
            if (i >= 32) {
                accessibilityAction8 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL;
                accessibilityAction5 = accessibilityAction8;
            } else {
                accessibilityAction5 = null;
            }
            ACTION_DRAG_CANCEL = new AccessibilityActionCompat(accessibilityAction5, R.id.FUNCTION, null, null, null);
            if (i >= 33) {
                accessibilityAction7 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS;
                accessibilityAction6 = accessibilityAction7;
            } else {
                accessibilityAction6 = null;
            }
            ACTION_SHOW_TEXT_SUGGESTIONS = new AccessibilityActionCompat(accessibilityAction6, R.id.KEYCODE_0, null, null, null);
            ACTION_SCROLL_IN_DIRECTION = new AccessibilityActionCompat(i >= 34 ? C0837d.m3684a() : null, R.id.KEYCODE_3D_MODE, null, null, null);
        }

        public AccessibilityActionCompat(int i, CharSequence charSequence) {
            this(null, i, charSequence, null, null);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public AccessibilityActionCompat createReplacementAction(CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            return new AccessibilityActionCompat(null, this.f6048b, charSequence, accessibilityViewCommand, this.f6049c);
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == null || !(obj instanceof AccessibilityActionCompat)) {
                return false;
            }
            AccessibilityActionCompat accessibilityActionCompat = (AccessibilityActionCompat) obj;
            Object obj2 = this.f6047a;
            return obj2 == null ? accessibilityActionCompat.f6047a == null : obj2.equals(accessibilityActionCompat.f6047a);
        }

        public int getId() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f6047a).getId();
        }

        public CharSequence getLabel() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f6047a).getLabel();
        }

        public int hashCode() {
            Object obj = this.f6047a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean perform(View view, Bundle bundle) {
            AccessibilityViewCommand.CommandArguments newInstance;
            if (this.mCommand == null) {
                return false;
            }
            Class<? extends AccessibilityViewCommand.CommandArguments> cls = this.f6049c;
            AccessibilityViewCommand.CommandArguments commandArguments = null;
            if (cls != null) {
                try {
                    newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception e) {
                    e = e;
                }
                try {
                    newInstance.setBundle(bundle);
                    commandArguments = newInstance;
                } catch (Exception e2) {
                    e = e2;
                    commandArguments = newInstance;
                    Class<? extends AccessibilityViewCommand.CommandArguments> cls2 = this.f6049c;
                    Log.e(f6046d, "Failed to execute command with argument class ViewCommandArgument: " + (cls2 == null ? "null" : cls2.getName()), e);
                    return this.mCommand.perform(view, commandArguments);
                }
            }
            return this.mCommand.perform(view, commandArguments);
        }

        @NonNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("AccessibilityActionCompat: ");
            String m3658d = AccessibilityNodeInfoCompat.m3658d(this.f6048b);
            if (m3658d.equals("ACTION_UNKNOWN") && getLabel() != null) {
                m3658d = getLabel().toString();
            }
            sb.append(m3658d);
            return sb.toString();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public AccessibilityActionCompat(int i, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            this(null, i, charSequence, accessibilityViewCommand, null);
        }

        public AccessibilityActionCompat(Object obj) {
            this(obj, 0, null, null, null);
        }

        public AccessibilityActionCompat(int i, CharSequence charSequence, Class<? extends AccessibilityViewCommand.CommandArguments> cls) {
            this(null, i, charSequence, null, cls);
        }

        public AccessibilityActionCompat(Object obj, int i, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand, Class<? extends AccessibilityViewCommand.CommandArguments> cls) {
            this.f6048b = i;
            this.mCommand = accessibilityViewCommand;
            if (obj == null) {
                this.f6047a = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            } else {
                this.f6047a = obj;
            }
            this.f6049c = cls;
        }
    }

    /* loaded from: classes3.dex */
    public static class CollectionInfoCompat {
        public static final int SELECTION_MODE_MULTIPLE = 2;
        public static final int SELECTION_MODE_NONE = 0;
        public static final int SELECTION_MODE_SINGLE = 1;

        /* renamed from: a */
        public final Object f6050a;

        public CollectionInfoCompat(Object obj) {
            this.f6050a = obj;
        }

        public static CollectionInfoCompat obtain(int i, int i2, boolean z, int i3) {
            return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3));
        }

        public int getColumnCount() {
            return ((AccessibilityNodeInfo.CollectionInfo) this.f6050a).getColumnCount();
        }

        public int getRowCount() {
            return ((AccessibilityNodeInfo.CollectionInfo) this.f6050a).getRowCount();
        }

        public int getSelectionMode() {
            return ((AccessibilityNodeInfo.CollectionInfo) this.f6050a).getSelectionMode();
        }

        public boolean isHierarchical() {
            return ((AccessibilityNodeInfo.CollectionInfo) this.f6050a).isHierarchical();
        }

        public static CollectionInfoCompat obtain(int i, int i2, boolean z) {
            return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z));
        }
    }

    /* loaded from: classes3.dex */
    public static class CollectionItemInfoCompat {

        /* renamed from: a */
        public final Object f6051a;

        /* loaded from: classes3.dex */
        public static final class Builder {

            /* renamed from: a */
            public boolean f6052a;

            /* renamed from: b */
            public int f6053b;

            /* renamed from: c */
            public int f6054c;

            /* renamed from: d */
            public int f6055d;

            /* renamed from: e */
            public int f6056e;

            /* renamed from: f */
            public boolean f6057f;

            /* renamed from: g */
            public String f6058g;

            /* renamed from: h */
            public String f6059h;

            @NonNull
            public CollectionItemInfoCompat build() {
                return Build.VERSION.SDK_INT >= 33 ? C0836c.m3674a(this.f6052a, this.f6053b, this.f6054c, this.f6055d, this.f6056e, this.f6057f, this.f6058g, this.f6059h) : C0834a.m3670a(this.f6054c, this.f6056e, this.f6053b, this.f6055d, this.f6052a, this.f6057f);
            }

            @NonNull
            public Builder setColumnIndex(int i) {
                this.f6053b = i;
                return this;
            }

            @NonNull
            public Builder setColumnSpan(int i) {
                this.f6055d = i;
                return this;
            }

            @NonNull
            public Builder setColumnTitle(@Nullable String str) {
                this.f6059h = str;
                return this;
            }

            @NonNull
            public Builder setHeading(boolean z) {
                this.f6052a = z;
                return this;
            }

            @NonNull
            public Builder setRowIndex(int i) {
                this.f6054c = i;
                return this;
            }

            @NonNull
            public Builder setRowSpan(int i) {
                this.f6056e = i;
                return this;
            }

            @NonNull
            public Builder setRowTitle(@Nullable String str) {
                this.f6058g = str;
                return this;
            }

            @NonNull
            public Builder setSelected(boolean z) {
                this.f6057f = z;
                return this;
            }
        }

        public CollectionItemInfoCompat(Object obj) {
            this.f6051a = obj;
        }

        public static CollectionItemInfoCompat obtain(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
        }

        public int getColumnIndex() {
            return ((AccessibilityNodeInfo.CollectionItemInfo) this.f6051a).getColumnIndex();
        }

        public int getColumnSpan() {
            return ((AccessibilityNodeInfo.CollectionItemInfo) this.f6051a).getColumnSpan();
        }

        @Nullable
        public String getColumnTitle() {
            if (Build.VERSION.SDK_INT >= 33) {
                return C0836c.m3676c(this.f6051a);
            }
            return null;
        }

        public int getRowIndex() {
            return ((AccessibilityNodeInfo.CollectionItemInfo) this.f6051a).getRowIndex();
        }

        public int getRowSpan() {
            return ((AccessibilityNodeInfo.CollectionItemInfo) this.f6051a).getRowSpan();
        }

        @Nullable
        public String getRowTitle() {
            if (Build.VERSION.SDK_INT >= 33) {
                return C0836c.m3677d(this.f6051a);
            }
            return null;
        }

        @Deprecated
        public boolean isHeading() {
            return ((AccessibilityNodeInfo.CollectionItemInfo) this.f6051a).isHeading();
        }

        public boolean isSelected() {
            return ((AccessibilityNodeInfo.CollectionItemInfo) this.f6051a).isSelected();
        }

        public static CollectionItemInfoCompat obtain(int i, int i2, int i3, int i4, boolean z) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z));
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.core.view.accessibility.AccessibilityNodeInfoCompat$a */
    /* loaded from: classes3.dex */
    public static class C0834a {
        @DoNotInline
        /* renamed from: a */
        public static CollectionItemInfoCompat m3670a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.view.accessibility.AccessibilityNodeInfoCompat$b */
    /* loaded from: classes3.dex */
    public static class C0835b {
        @DoNotInline
        /* renamed from: a */
        public static Object m3671a(int i, float f, float f2, float f3) {
            return new AccessibilityNodeInfo.RangeInfo(i, f, f2, f3);
        }

        @DoNotInline
        /* renamed from: b */
        public static CharSequence m3672b(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getStateDescription();
        }

        @DoNotInline
        /* renamed from: c */
        public static void m3673c(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
            accessibilityNodeInfo.setStateDescription(charSequence);
        }
    }

    @RequiresApi(33)
    /* renamed from: androidx.core.view.accessibility.AccessibilityNodeInfoCompat$c */
    /* loaded from: classes3.dex */
    public static class C0836c {
        @DoNotInline
        /* renamed from: a */
        public static CollectionItemInfoCompat m3674a(boolean z, int i, int i2, int i3, int i4, boolean z2, String str, String str2) {
            return new CollectionItemInfoCompat(new AccessibilityNodeInfo.CollectionItemInfo.Builder().setHeading(z).setColumnIndex(i).setRowIndex(i2).setColumnSpan(i3).setRowSpan(i4).setSelected(z2).setRowTitle(str).setColumnTitle(str2).build());
        }

        @DoNotInline
        /* renamed from: b */
        public static AccessibilityNodeInfoCompat m3675b(AccessibilityNodeInfo accessibilityNodeInfo, int i, int i2) {
            return AccessibilityNodeInfoCompat.m3659l(accessibilityNodeInfo.getChild(i, i2));
        }

        @DoNotInline
        /* renamed from: c */
        public static String m3676c(Object obj) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getColumnTitle();
        }

        @DoNotInline
        /* renamed from: d */
        public static String m3677d(Object obj) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getRowTitle();
        }

        @DoNotInline
        /* renamed from: e */
        public static AccessibilityNodeInfo.ExtraRenderingInfo m3678e(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getExtraRenderingInfo();
        }

        @DoNotInline
        /* renamed from: f */
        public static AccessibilityNodeInfoCompat m3679f(AccessibilityNodeInfo accessibilityNodeInfo, int i) {
            return AccessibilityNodeInfoCompat.m3659l(accessibilityNodeInfo.getParent(i));
        }

        @DoNotInline
        /* renamed from: g */
        public static String m3680g(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getUniqueId();
        }

        @DoNotInline
        /* renamed from: h */
        public static boolean m3681h(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.isTextSelectable();
        }

        @DoNotInline
        /* renamed from: i */
        public static void m3682i(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
            accessibilityNodeInfo.setTextSelectable(z);
        }

        @DoNotInline
        /* renamed from: j */
        public static void m3683j(AccessibilityNodeInfo accessibilityNodeInfo, String str) {
            accessibilityNodeInfo.setUniqueId(str);
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.view.accessibility.AccessibilityNodeInfoCompat$d */
    /* loaded from: classes3.dex */
    public static class C0837d {
        @DoNotInline
        /* renamed from: a */
        public static AccessibilityNodeInfo.AccessibilityAction m3684a() {
            return AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_IN_DIRECTION;
        }

        @DoNotInline
        /* renamed from: b */
        public static void m3685b(AccessibilityNodeInfo accessibilityNodeInfo, Rect rect) {
            accessibilityNodeInfo.getBoundsInWindow(rect);
        }

        @DoNotInline
        /* renamed from: c */
        public static CharSequence m3686c(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getContainerTitle();
        }

        @DoNotInline
        /* renamed from: d */
        public static long m3687d(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getMinDurationBetweenContentChanges().toMillis();
        }

        @DoNotInline
        /* renamed from: e */
        public static boolean m3688e(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.hasRequestInitialAccessibilityFocus();
        }

        @DoNotInline
        /* renamed from: f */
        public static boolean m3689f(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.isAccessibilityDataSensitive();
        }

        @DoNotInline
        /* renamed from: g */
        public static void m3690g(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
            accessibilityNodeInfo.setAccessibilityDataSensitive(z);
        }

        @DoNotInline
        /* renamed from: h */
        public static void m3691h(AccessibilityNodeInfo accessibilityNodeInfo, Rect rect) {
            accessibilityNodeInfo.setBoundsInWindow(rect);
        }

        @DoNotInline
        /* renamed from: i */
        public static void m3692i(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
            accessibilityNodeInfo.setContainerTitle(charSequence);
        }

        @DoNotInline
        /* renamed from: j */
        public static void m3693j(AccessibilityNodeInfo accessibilityNodeInfo, long j) {
            accessibilityNodeInfo.setMinDurationBetweenContentChanges(Duration.ofMillis(j));
        }

        @DoNotInline
        /* renamed from: k */
        public static void m3694k(AccessibilityNodeInfo accessibilityNodeInfo, View view, boolean z) {
            accessibilityNodeInfo.setQueryFromAppProcessEnabled(view, z);
        }

        @DoNotInline
        /* renamed from: l */
        public static void m3695l(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
            accessibilityNodeInfo.setRequestInitialAccessibilityFocus(z);
        }
    }

    @Deprecated
    public AccessibilityNodeInfoCompat(Object obj) {
        this.f6044a = (AccessibilityNodeInfo) obj;
    }

    /* renamed from: d */
    public static String m3658d(int i) {
        if (i == 1) {
            return "ACTION_FOCUS";
        }
        if (i == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            case R.id.KEYCODE_3D_MODE:
                return "ACTION_SCROLL_IN_DIRECTION";
            default:
                switch (i) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                switch (i) {
                                    case R.id.accessibilityActionImeEnter:
                                        return "ACTION_IME_ENTER";
                                    case R.id.ALT:
                                        return "ACTION_DRAG_START";
                                    case R.id.CTRL:
                                        return "ACTION_DRAG_DROP";
                                    case R.id.FUNCTION:
                                        return "ACTION_DRAG_CANCEL";
                                    default:
                                        return "ACTION_UNKNOWN";
                                }
                        }
                }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static ClickableSpan[] getClickableSpans(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    /* renamed from: l */
    public static AccessibilityNodeInfoCompat m3659l(Object obj) {
        if (obj != null) {
            return new AccessibilityNodeInfoCompat(obj);
        }
        return null;
    }

    public static AccessibilityNodeInfoCompat obtain(View view) {
        return wrap(AccessibilityNodeInfo.obtain(view));
    }

    public static AccessibilityNodeInfoCompat wrap(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        return new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
    }

    /* renamed from: a */
    public final void m3660a(ClickableSpan clickableSpan, Spanned spanned, int i) {
        m3662c(f6026i).add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        m3662c(f6027j).add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        m3662c(f6028k).add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        m3662c(f6025h).add(Integer.valueOf(i));
    }

    public void addAction(int i) {
        this.f6044a.addAction(i);
    }

    public void addChild(View view) {
        this.f6044a.addChild(view);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void addSpansToExtras(CharSequence charSequence, View view) {
    }

    /* renamed from: b */
    public final void m3661b() {
        this.f6044a.getExtras().remove(f6026i);
        this.f6044a.getExtras().remove(f6027j);
        this.f6044a.getExtras().remove(f6028k);
        this.f6044a.getExtras().remove(f6025h);
    }

    /* renamed from: c */
    public final List<Integer> m3662c(String str) {
        ArrayList<Integer> integerArrayList = this.f6044a.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.f6044a.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    public boolean canOpenPopup() {
        return this.f6044a.canOpenPopup();
    }

    /* renamed from: e */
    public final boolean m3663e(int i) {
        Bundle extras = getExtras();
        return extras != null && (extras.getInt(f6024g, 0) & i) == i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessibilityNodeInfoCompat)) {
            return false;
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f6044a;
        if (accessibilityNodeInfo == null) {
            if (accessibilityNodeInfoCompat.f6044a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(accessibilityNodeInfoCompat.f6044a)) {
            return false;
        }
        return this.f6045b == accessibilityNodeInfoCompat.f6045b && this.mParentVirtualDescendantId == accessibilityNodeInfoCompat.mParentVirtualDescendantId;
    }

    /* renamed from: f */
    public final SparseArray<WeakReference<ClickableSpan>> m3664f(View view) {
        SparseArray<WeakReference<ClickableSpan>> m3665g = m3665g(view);
        if (m3665g != null) {
            return m3665g;
        }
        SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
        view.setTag(C0512R.id.tag_accessibility_clickable_spans, sparseArray);
        return sparseArray;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String str) {
        ArrayList arrayList = new ArrayList();
        List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText = this.f6044a.findAccessibilityNodeInfosByText(str);
        int size = findAccessibilityNodeInfosByText.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(wrap(findAccessibilityNodeInfosByText.get(i)));
        }
        return arrayList;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByViewId(String str) {
        List<AccessibilityNodeInfo> findAccessibilityNodeInfosByViewId = this.f6044a.findAccessibilityNodeInfosByViewId(str);
        ArrayList arrayList = new ArrayList();
        Iterator<AccessibilityNodeInfo> it2 = findAccessibilityNodeInfosByViewId.iterator();
        while (it2.hasNext()) {
            arrayList.add(wrap(it2.next()));
        }
        return arrayList;
    }

    public AccessibilityNodeInfoCompat findFocus(int i) {
        return m3659l(this.f6044a.findFocus(i));
    }

    public AccessibilityNodeInfoCompat focusSearch(int i) {
        return m3659l(this.f6044a.focusSearch(i));
    }

    /* renamed from: g */
    public final SparseArray<WeakReference<ClickableSpan>> m3665g(View view) {
        return (SparseArray) view.getTag(C0512R.id.tag_accessibility_clickable_spans);
    }

    public List<AccessibilityActionCompat> getActionList() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = this.f6044a.getActionList();
        if (actionList == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = actionList.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(new AccessibilityActionCompat(actionList.get(i)));
        }
        return arrayList;
    }

    @Deprecated
    public int getActions() {
        return this.f6044a.getActions();
    }

    @NonNull
    public List<String> getAvailableExtraData() {
        return this.f6044a.getAvailableExtraData();
    }

    @Deprecated
    public void getBoundsInParent(Rect rect) {
        this.f6044a.getBoundsInParent(rect);
    }

    public void getBoundsInScreen(Rect rect) {
        this.f6044a.getBoundsInScreen(rect);
    }

    public void getBoundsInWindow(@NonNull Rect rect) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0837d.m3685b(this.f6044a, rect);
            return;
        }
        Rect rect2 = (Rect) this.f6044a.getExtras().getParcelable(f6033p);
        if (rect2 != null) {
            rect.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
    }

    public AccessibilityNodeInfoCompat getChild(int i) {
        return m3659l(this.f6044a.getChild(i));
    }

    public int getChildCount() {
        return this.f6044a.getChildCount();
    }

    public CharSequence getClassName() {
        return this.f6044a.getClassName();
    }

    public CollectionInfoCompat getCollectionInfo() {
        AccessibilityNodeInfo.CollectionInfo collectionInfo = this.f6044a.getCollectionInfo();
        if (collectionInfo != null) {
            return new CollectionInfoCompat(collectionInfo);
        }
        return null;
    }

    public CollectionItemInfoCompat getCollectionItemInfo() {
        AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo = this.f6044a.getCollectionItemInfo();
        if (collectionItemInfo != null) {
            return new CollectionItemInfoCompat(collectionItemInfo);
        }
        return null;
    }

    @Nullable
    public CharSequence getContainerTitle() {
        return Build.VERSION.SDK_INT >= 34 ? C0837d.m3686c(this.f6044a) : this.f6044a.getExtras().getCharSequence(f6032o);
    }

    public CharSequence getContentDescription() {
        return this.f6044a.getContentDescription();
    }

    public int getDrawingOrder() {
        return this.f6044a.getDrawingOrder();
    }

    public CharSequence getError() {
        return this.f6044a.getError();
    }

    @Nullable
    public AccessibilityNodeInfo.ExtraRenderingInfo getExtraRenderingInfo() {
        if (Build.VERSION.SDK_INT >= 33) {
            return C0836c.m3678e(this.f6044a);
        }
        return null;
    }

    public Bundle getExtras() {
        return this.f6044a.getExtras();
    }

    @Nullable
    public CharSequence getHintText() {
        return this.f6044a.getHintText();
    }

    @Deprecated
    public Object getInfo() {
        return this.f6044a;
    }

    public int getInputType() {
        return this.f6044a.getInputType();
    }

    public AccessibilityNodeInfoCompat getLabelFor() {
        return m3659l(this.f6044a.getLabelFor());
    }

    public AccessibilityNodeInfoCompat getLabeledBy() {
        return m3659l(this.f6044a.getLabeledBy());
    }

    public int getLiveRegion() {
        return this.f6044a.getLiveRegion();
    }

    public int getMaxTextLength() {
        return this.f6044a.getMaxTextLength();
    }

    public long getMinDurationBetweenContentChangesMillis() {
        return Build.VERSION.SDK_INT >= 34 ? C0837d.m3687d(this.f6044a) : this.f6044a.getExtras().getLong(f6034q);
    }

    public int getMovementGranularities() {
        return this.f6044a.getMovementGranularities();
    }

    public CharSequence getPackageName() {
        return this.f6044a.getPackageName();
    }

    @Nullable
    public CharSequence getPaneTitle() {
        return this.f6044a.getPaneTitle();
    }

    public AccessibilityNodeInfoCompat getParent() {
        return m3659l(this.f6044a.getParent());
    }

    public RangeInfoCompat getRangeInfo() {
        AccessibilityNodeInfo.RangeInfo rangeInfo = this.f6044a.getRangeInfo();
        if (rangeInfo != null) {
            return new RangeInfoCompat(rangeInfo);
        }
        return null;
    }

    @Nullable
    public CharSequence getRoleDescription() {
        return this.f6044a.getExtras().getCharSequence(f6020c);
    }

    @Nullable
    public CharSequence getStateDescription() {
        return Build.VERSION.SDK_INT >= 30 ? C0835b.m3672b(this.f6044a) : this.f6044a.getExtras().getCharSequence(f6030m);
    }

    public CharSequence getText() {
        if (!m3666h()) {
            return this.f6044a.getText();
        }
        List<Integer> m3662c = m3662c(f6026i);
        List<Integer> m3662c2 = m3662c(f6027j);
        List<Integer> m3662c3 = m3662c(f6028k);
        List<Integer> m3662c4 = m3662c(f6025h);
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.f6044a.getText(), 0, this.f6044a.getText().length()));
        for (int i = 0; i < m3662c.size(); i++) {
            spannableString.setSpan(new AccessibilityClickableSpanCompat(m3662c4.get(i).intValue(), this, getExtras().getInt(f6029l)), m3662c.get(i).intValue(), m3662c2.get(i).intValue(), m3662c3.get(i).intValue());
        }
        return spannableString;
    }

    public int getTextSelectionEnd() {
        return this.f6044a.getTextSelectionEnd();
    }

    public int getTextSelectionStart() {
        return this.f6044a.getTextSelectionStart();
    }

    @Nullable
    public CharSequence getTooltipText() {
        return this.f6044a.getTooltipText();
    }

    @Nullable
    public TouchDelegateInfoCompat getTouchDelegateInfo() {
        AccessibilityNodeInfo.TouchDelegateInfo touchDelegateInfo = this.f6044a.getTouchDelegateInfo();
        if (touchDelegateInfo != null) {
            return new TouchDelegateInfoCompat(touchDelegateInfo);
        }
        return null;
    }

    public AccessibilityNodeInfoCompat getTraversalAfter() {
        return m3659l(this.f6044a.getTraversalAfter());
    }

    public AccessibilityNodeInfoCompat getTraversalBefore() {
        return m3659l(this.f6044a.getTraversalBefore());
    }

    @Nullable
    public String getUniqueId() {
        return Build.VERSION.SDK_INT >= 33 ? C0836c.m3680g(this.f6044a) : this.f6044a.getExtras().getString(f6031n);
    }

    public String getViewIdResourceName() {
        return this.f6044a.getViewIdResourceName();
    }

    public AccessibilityWindowInfoCompat getWindow() {
        return AccessibilityWindowInfoCompat.m3697b(this.f6044a.getWindow());
    }

    public int getWindowId() {
        return this.f6044a.getWindowId();
    }

    /* renamed from: h */
    public final boolean m3666h() {
        return !m3662c(f6026i).isEmpty();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public boolean hasRequestInitialAccessibilityFocus() {
        return Build.VERSION.SDK_INT >= 34 ? C0837d.m3688e(this.f6044a) : m3663e(32);
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f6044a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    /* renamed from: i */
    public final int m3667i(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals(sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = f6043z;
        f6043z = i2 + 1;
        return i2;
    }

    public boolean isAccessibilityDataSensitive() {
        return Build.VERSION.SDK_INT >= 34 ? C0837d.m3689f(this.f6044a) : m3663e(64);
    }

    public boolean isAccessibilityFocused() {
        return this.f6044a.isAccessibilityFocused();
    }

    public boolean isCheckable() {
        return this.f6044a.isCheckable();
    }

    public boolean isChecked() {
        return this.f6044a.isChecked();
    }

    public boolean isClickable() {
        return this.f6044a.isClickable();
    }

    public boolean isContentInvalid() {
        return this.f6044a.isContentInvalid();
    }

    public boolean isContextClickable() {
        return this.f6044a.isContextClickable();
    }

    public boolean isDismissable() {
        return this.f6044a.isDismissable();
    }

    public boolean isEditable() {
        return this.f6044a.isEditable();
    }

    public boolean isEnabled() {
        return this.f6044a.isEnabled();
    }

    public boolean isFocusable() {
        return this.f6044a.isFocusable();
    }

    public boolean isFocused() {
        return this.f6044a.isFocused();
    }

    public boolean isGranularScrollingSupported() {
        return m3663e(67108864);
    }

    public boolean isHeading() {
        return this.f6044a.isHeading();
    }

    public boolean isImportantForAccessibility() {
        return this.f6044a.isImportantForAccessibility();
    }

    public boolean isLongClickable() {
        return this.f6044a.isLongClickable();
    }

    public boolean isMultiLine() {
        return this.f6044a.isMultiLine();
    }

    public boolean isPassword() {
        return this.f6044a.isPassword();
    }

    public boolean isScreenReaderFocusable() {
        return this.f6044a.isScreenReaderFocusable();
    }

    public boolean isScrollable() {
        return this.f6044a.isScrollable();
    }

    public boolean isSelected() {
        return this.f6044a.isSelected();
    }

    public boolean isShowingHintText() {
        return this.f6044a.isShowingHintText();
    }

    public boolean isTextEntryKey() {
        return this.f6044a.isTextEntryKey();
    }

    public boolean isTextSelectable() {
        return Build.VERSION.SDK_INT >= 33 ? C0836c.m3681h(this.f6044a) : m3663e(8388608);
    }

    public boolean isVisibleToUser() {
        return this.f6044a.isVisibleToUser();
    }

    /* renamed from: j */
    public final void m3668j(View view) {
        SparseArray<WeakReference<ClickableSpan>> m3665g = m3665g(view);
        if (m3665g != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < m3665g.size(); i++) {
                if (m3665g.valueAt(i).get() == null) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                m3665g.remove(((Integer) arrayList.get(i2)).intValue());
            }
        }
    }

    /* renamed from: k */
    public final void m3669k(int i, boolean z) {
        Bundle extras = getExtras();
        if (extras != null) {
            int i2 = extras.getInt(f6024g, 0) & (~i);
            if (!z) {
                i = 0;
            }
            extras.putInt(f6024g, i | i2);
        }
    }

    public boolean performAction(int i) {
        return this.f6044a.performAction(i);
    }

    @Deprecated
    public void recycle() {
    }

    public boolean refresh() {
        return this.f6044a.refresh();
    }

    public boolean removeAction(AccessibilityActionCompat accessibilityActionCompat) {
        return this.f6044a.removeAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.f6047a);
    }

    public boolean removeChild(View view) {
        return this.f6044a.removeChild(view);
    }

    public void setAccessibilityDataSensitive(boolean z) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0837d.m3690g(this.f6044a, z);
        } else {
            m3669k(64, z);
        }
    }

    public void setAccessibilityFocused(boolean z) {
        this.f6044a.setAccessibilityFocused(z);
    }

    public void setAvailableExtraData(@NonNull List<String> list) {
        this.f6044a.setAvailableExtraData(list);
    }

    @Deprecated
    public void setBoundsInParent(Rect rect) {
        this.f6044a.setBoundsInParent(rect);
    }

    public void setBoundsInScreen(Rect rect) {
        this.f6044a.setBoundsInScreen(rect);
    }

    public void setBoundsInWindow(@NonNull Rect rect) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0837d.m3691h(this.f6044a, rect);
        } else {
            this.f6044a.getExtras().putParcelable(f6033p, rect);
        }
    }

    public void setCanOpenPopup(boolean z) {
        this.f6044a.setCanOpenPopup(z);
    }

    public void setCheckable(boolean z) {
        this.f6044a.setCheckable(z);
    }

    public void setChecked(boolean z) {
        this.f6044a.setChecked(z);
    }

    public void setClassName(CharSequence charSequence) {
        this.f6044a.setClassName(charSequence);
    }

    public void setClickable(boolean z) {
        this.f6044a.setClickable(z);
    }

    public void setCollectionInfo(Object obj) {
        this.f6044a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((CollectionInfoCompat) obj).f6050a);
    }

    public void setCollectionItemInfo(Object obj) {
        this.f6044a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((CollectionItemInfoCompat) obj).f6051a);
    }

    public void setContainerTitle(@Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0837d.m3692i(this.f6044a, charSequence);
        } else {
            this.f6044a.getExtras().putCharSequence(f6032o, charSequence);
        }
    }

    public void setContentDescription(CharSequence charSequence) {
        this.f6044a.setContentDescription(charSequence);
    }

    public void setContentInvalid(boolean z) {
        this.f6044a.setContentInvalid(z);
    }

    public void setContextClickable(boolean z) {
        this.f6044a.setContextClickable(z);
    }

    public void setDismissable(boolean z) {
        this.f6044a.setDismissable(z);
    }

    public void setDrawingOrder(int i) {
        this.f6044a.setDrawingOrder(i);
    }

    public void setEditable(boolean z) {
        this.f6044a.setEditable(z);
    }

    public void setEnabled(boolean z) {
        this.f6044a.setEnabled(z);
    }

    public void setError(CharSequence charSequence) {
        this.f6044a.setError(charSequence);
    }

    public void setFocusable(boolean z) {
        this.f6044a.setFocusable(z);
    }

    public void setFocused(boolean z) {
        this.f6044a.setFocused(z);
    }

    public void setGranularScrollingSupported(boolean z) {
        m3669k(67108864, z);
    }

    public void setHeading(boolean z) {
        this.f6044a.setHeading(z);
    }

    public void setHintText(@Nullable CharSequence charSequence) {
        this.f6044a.setHintText(charSequence);
    }

    public void setImportantForAccessibility(boolean z) {
        this.f6044a.setImportantForAccessibility(z);
    }

    public void setInputType(int i) {
        this.f6044a.setInputType(i);
    }

    public void setLabelFor(View view) {
        this.f6044a.setLabelFor(view);
    }

    public void setLabeledBy(View view) {
        this.f6044a.setLabeledBy(view);
    }

    public void setLiveRegion(int i) {
        this.f6044a.setLiveRegion(i);
    }

    public void setLongClickable(boolean z) {
        this.f6044a.setLongClickable(z);
    }

    public void setMaxTextLength(int i) {
        this.f6044a.setMaxTextLength(i);
    }

    public void setMinDurationBetweenContentChangesMillis(long j) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0837d.m3693j(this.f6044a, j);
        } else {
            this.f6044a.getExtras().putLong(f6034q, j);
        }
    }

    public void setMovementGranularities(int i) {
        this.f6044a.setMovementGranularities(i);
    }

    public void setMultiLine(boolean z) {
        this.f6044a.setMultiLine(z);
    }

    public void setPackageName(CharSequence charSequence) {
        this.f6044a.setPackageName(charSequence);
    }

    public void setPaneTitle(@Nullable CharSequence charSequence) {
        this.f6044a.setPaneTitle(charSequence);
    }

    public void setParent(View view) {
        this.mParentVirtualDescendantId = -1;
        this.f6044a.setParent(view);
    }

    public void setPassword(boolean z) {
        this.f6044a.setPassword(z);
    }

    public void setQueryFromAppProcessEnabled(@NonNull View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0837d.m3694k(this.f6044a, view, z);
        }
    }

    public void setRangeInfo(RangeInfoCompat rangeInfoCompat) {
        this.f6044a.setRangeInfo((AccessibilityNodeInfo.RangeInfo) rangeInfoCompat.f6060a);
    }

    @SuppressLint({"GetterSetterNames"})
    public void setRequestInitialAccessibilityFocus(boolean z) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0837d.m3695l(this.f6044a, z);
        } else {
            m3669k(32, z);
        }
    }

    public void setRoleDescription(@Nullable CharSequence charSequence) {
        this.f6044a.getExtras().putCharSequence(f6020c, charSequence);
    }

    public void setScreenReaderFocusable(boolean z) {
        this.f6044a.setScreenReaderFocusable(z);
    }

    public void setScrollable(boolean z) {
        this.f6044a.setScrollable(z);
    }

    public void setSelected(boolean z) {
        this.f6044a.setSelected(z);
    }

    public void setShowingHintText(boolean z) {
        this.f6044a.setShowingHintText(z);
    }

    public void setSource(View view) {
        this.f6045b = -1;
        this.f6044a.setSource(view);
    }

    public void setStateDescription(@Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            C0835b.m3673c(this.f6044a, charSequence);
        } else {
            this.f6044a.getExtras().putCharSequence(f6030m, charSequence);
        }
    }

    public void setText(CharSequence charSequence) {
        this.f6044a.setText(charSequence);
    }

    public void setTextEntryKey(boolean z) {
        this.f6044a.setTextEntryKey(z);
    }

    public void setTextSelectable(boolean z) {
        if (Build.VERSION.SDK_INT >= 33) {
            C0836c.m3682i(this.f6044a, z);
        } else {
            m3669k(8388608, z);
        }
    }

    public void setTextSelection(int i, int i2) {
        this.f6044a.setTextSelection(i, i2);
    }

    public void setTooltipText(@Nullable CharSequence charSequence) {
        this.f6044a.setTooltipText(charSequence);
    }

    public void setTouchDelegateInfo(@NonNull TouchDelegateInfoCompat touchDelegateInfoCompat) {
        this.f6044a.setTouchDelegateInfo(touchDelegateInfoCompat.f6061a);
    }

    public void setTraversalAfter(View view) {
        this.f6044a.setTraversalAfter(view);
    }

    public void setTraversalBefore(View view) {
        this.f6044a.setTraversalBefore(view);
    }

    public void setUniqueId(@Nullable String str) {
        if (Build.VERSION.SDK_INT >= 33) {
            C0836c.m3683j(this.f6044a, str);
        } else {
            this.f6044a.getExtras().putString(f6031n, str);
        }
    }

    public void setViewIdResourceName(String str) {
        this.f6044a.setViewIdResourceName(str);
    }

    public void setVisibleToUser(boolean z) {
        this.f6044a.setVisibleToUser(z);
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        getBoundsInParent(rect);
        sb.append("; boundsInParent: " + rect);
        getBoundsInScreen(rect);
        sb.append("; boundsInScreen: " + rect);
        getBoundsInWindow(rect);
        sb.append("; boundsInWindow: " + rect);
        sb.append("; packageName: ");
        sb.append(getPackageName());
        sb.append("; className: ");
        sb.append(getClassName());
        sb.append("; text: ");
        sb.append(getText());
        sb.append("; error: ");
        sb.append(getError());
        sb.append("; maxTextLength: ");
        sb.append(getMaxTextLength());
        sb.append("; stateDescription: ");
        sb.append(getStateDescription());
        sb.append("; contentDescription: ");
        sb.append(getContentDescription());
        sb.append("; tooltipText: ");
        sb.append(getTooltipText());
        sb.append("; viewIdResName: ");
        sb.append(getViewIdResourceName());
        sb.append("; uniqueId: ");
        sb.append(getUniqueId());
        sb.append("; checkable: ");
        sb.append(isCheckable());
        sb.append("; checked: ");
        sb.append(isChecked());
        sb.append("; focusable: ");
        sb.append(isFocusable());
        sb.append("; focused: ");
        sb.append(isFocused());
        sb.append("; selected: ");
        sb.append(isSelected());
        sb.append("; clickable: ");
        sb.append(isClickable());
        sb.append("; longClickable: ");
        sb.append(isLongClickable());
        sb.append("; contextClickable: ");
        sb.append(isContextClickable());
        sb.append("; enabled: ");
        sb.append(isEnabled());
        sb.append("; password: ");
        sb.append(isPassword());
        sb.append("; scrollable: " + isScrollable());
        sb.append("; containerTitle: ");
        sb.append(getContainerTitle());
        sb.append("; granularScrollingSupported: ");
        sb.append(isGranularScrollingSupported());
        sb.append("; importantForAccessibility: ");
        sb.append(isImportantForAccessibility());
        sb.append("; visible: ");
        sb.append(isVisibleToUser());
        sb.append("; isTextSelectable: ");
        sb.append(isTextSelectable());
        sb.append("; accessibilityDataSensitive: ");
        sb.append(isAccessibilityDataSensitive());
        sb.append("; [");
        List<AccessibilityActionCompat> actionList = getActionList();
        for (int i = 0; i < actionList.size(); i++) {
            AccessibilityActionCompat accessibilityActionCompat = actionList.get(i);
            String m3658d = m3658d(accessibilityActionCompat.getId());
            if (m3658d.equals("ACTION_UNKNOWN") && accessibilityActionCompat.getLabel() != null) {
                m3658d = accessibilityActionCompat.getLabel().toString();
            }
            sb.append(m3658d);
            if (i != actionList.size() - 1) {
                sb.append(", ");
            }
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    public AccessibilityNodeInfo unwrap() {
        return this.f6044a;
    }

    /* loaded from: classes3.dex */
    public static class RangeInfoCompat {
        public static final int RANGE_TYPE_FLOAT = 1;
        public static final int RANGE_TYPE_INT = 0;
        public static final int RANGE_TYPE_PERCENT = 2;

        /* renamed from: a */
        public final Object f6060a;

        public RangeInfoCompat(Object obj) {
            this.f6060a = obj;
        }

        public static RangeInfoCompat obtain(int i, float f, float f2, float f3) {
            return new RangeInfoCompat(AccessibilityNodeInfo.RangeInfo.obtain(i, f, f2, f3));
        }

        public float getCurrent() {
            return ((AccessibilityNodeInfo.RangeInfo) this.f6060a).getCurrent();
        }

        public float getMax() {
            return ((AccessibilityNodeInfo.RangeInfo) this.f6060a).getMax();
        }

        public float getMin() {
            return ((AccessibilityNodeInfo.RangeInfo) this.f6060a).getMin();
        }

        public int getType() {
            return ((AccessibilityNodeInfo.RangeInfo) this.f6060a).getType();
        }

        public RangeInfoCompat(int i, float f, float f2, float f3) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.f6060a = C0835b.m3671a(i, f, f2, f3);
            } else {
                this.f6060a = AccessibilityNodeInfo.RangeInfo.obtain(i, f, f2, f3);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class TouchDelegateInfoCompat {

        /* renamed from: a */
        public final AccessibilityNodeInfo.TouchDelegateInfo f6061a;

        public TouchDelegateInfoCompat(@NonNull Map<Region, View> map) {
            this.f6061a = new AccessibilityNodeInfo.TouchDelegateInfo(map);
        }

        @Nullable
        public Region getRegionAt(@IntRange(from = 0) int i) {
            return this.f6061a.getRegionAt(i);
        }

        @IntRange(from = 0)
        public int getRegionCount() {
            return this.f6061a.getRegionCount();
        }

        @Nullable
        public AccessibilityNodeInfoCompat getTargetForRegion(@NonNull Region region) {
            AccessibilityNodeInfo targetForRegion = this.f6061a.getTargetForRegion(region);
            if (targetForRegion != null) {
                return AccessibilityNodeInfoCompat.wrap(targetForRegion);
            }
            return null;
        }

        public TouchDelegateInfoCompat(@NonNull AccessibilityNodeInfo.TouchDelegateInfo touchDelegateInfo) {
            this.f6061a = touchDelegateInfo;
        }
    }

    public static AccessibilityNodeInfoCompat obtain(View view, int i) {
        return m3659l(AccessibilityNodeInfo.obtain(view, i));
    }

    public void addAction(AccessibilityActionCompat accessibilityActionCompat) {
        this.f6044a.addAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.f6047a);
    }

    public void addChild(View view, int i) {
        this.f6044a.addChild(view, i);
    }

    @Nullable
    public AccessibilityNodeInfoCompat getChild(int i, int i2) {
        if (Build.VERSION.SDK_INT >= 33) {
            return C0836c.m3675b(this.f6044a, i, i2);
        }
        return getChild(i);
    }

    @Nullable
    public AccessibilityNodeInfoCompat getParent(int i) {
        if (Build.VERSION.SDK_INT >= 33) {
            return C0836c.m3679f(this.f6044a, i);
        }
        return getParent();
    }

    public boolean performAction(int i, Bundle bundle) {
        return this.f6044a.performAction(i, bundle);
    }

    public boolean removeChild(View view, int i) {
        return this.f6044a.removeChild(view, i);
    }

    public void setLabelFor(View view, int i) {
        this.f6044a.setLabelFor(view, i);
    }

    public void setLabeledBy(View view, int i) {
        this.f6044a.setLabeledBy(view, i);
    }

    public void setTraversalAfter(View view, int i) {
        this.f6044a.setTraversalAfter(view, i);
    }

    public void setTraversalBefore(View view, int i) {
        this.f6044a.setTraversalBefore(view, i);
    }

    public void setParent(View view, int i) {
        this.mParentVirtualDescendantId = i;
        this.f6044a.setParent(view, i);
    }

    public void setSource(View view, int i) {
        this.f6045b = i;
        this.f6044a.setSource(view, i);
    }

    public static AccessibilityNodeInfoCompat obtain() {
        return wrap(AccessibilityNodeInfo.obtain());
    }

    public AccessibilityNodeInfoCompat(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f6044a = accessibilityNodeInfo;
    }

    public static AccessibilityNodeInfoCompat obtain(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        return wrap(AccessibilityNodeInfo.obtain(accessibilityNodeInfoCompat.f6044a));
    }
}
