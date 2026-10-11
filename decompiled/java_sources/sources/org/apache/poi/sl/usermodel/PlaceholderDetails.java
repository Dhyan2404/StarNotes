package org.apache.poi.sl.usermodel;

import java.time.format.DateTimeFormatter;

/* loaded from: classes12.dex */
public interface PlaceholderDetails {

    /* loaded from: classes12.dex */
    public enum PlaceholderSize {
        quarter,
        half,
        full
    }

    default DateTimeFormatter getDateFormat() {
        return DateTimeFormatter.ISO_LOCAL_DATE;
    }

    Placeholder getPlaceholder();

    PlaceholderSize getSize();

    String getText();

    default String getUserDate() {
        return null;
    }

    boolean isVisible();

    void setPlaceholder(Placeholder placeholder);

    void setSize(PlaceholderSize placeholderSize);

    void setText(String str);

    void setVisible(boolean z);
}
