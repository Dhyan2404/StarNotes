package com.onegravity.rteditor;

import android.text.Layout;
import android.view.ViewGroup;
import com.onegravity.rteditor.fonts.RTTypeface;

/* loaded from: classes7.dex */
public interface RTToolbar {
    int getId();

    ViewGroup getToolbarContainer();

    void removeBGColor();

    void removeFontColor();

    void removeToolbarListener();

    void setAlignment(Layout.Alignment alignment);

    void setBGColor(int i);

    void setBold(boolean z);

    void setBullet(boolean z);

    void setFont(RTTypeface rTTypeface);

    void setFontColor(int i);

    void setFontSize(int i);

    void setItalic(boolean z);

    void setNumber(boolean z);

    void setStrikethrough(boolean z);

    void setSubscript(boolean z);

    void setSuperscript(boolean z);

    void setToolbarContainer(ViewGroup viewGroup);

    void setToolbarListener(RTToolbarListener rTToolbarListener);

    void setUnderline(boolean z);
}
