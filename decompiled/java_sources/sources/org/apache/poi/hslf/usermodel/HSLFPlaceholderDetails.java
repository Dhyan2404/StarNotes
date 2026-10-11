package org.apache.poi.hslf.usermodel;

import org.apache.poi.hslf.model.HeadersFooters;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.PlaceholderDetails;

/* loaded from: classes12.dex */
public class HSLFPlaceholderDetails implements PlaceholderDetails {
    private final Placeholder placeholder;
    private final HSLFSheet sheet;

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFPlaceholderDetails$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194611 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$Placeholder;

        static {
            int[] iArr = new int[Placeholder.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$Placeholder = iArr;
            try {
                iArr[Placeholder.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.TITLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.FOOTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.DATETIME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.SLIDE_NUMBER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public HSLFPlaceholderDetails(HSLFSheet hSLFSheet, Placeholder placeholder) {
        this.sheet = hSLFSheet;
        this.placeholder = placeholder;
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public Placeholder getPlaceholder() {
        return this.placeholder;
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public PlaceholderDetails.PlaceholderSize getSize() {
        return PlaceholderDetails.PlaceholderSize.full;
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public String getText() {
        Placeholder placeholder = getPlaceholder();
        if (placeholder == null) {
            return null;
        }
        HeadersFooters headersFooters = this.sheet.getHeadersFooters();
        int i = C194611.$SwitchMap$org$apache$poi$sl$usermodel$Placeholder[placeholder.ordinal()];
        if (i == 1 || i == 2) {
            return headersFooters.getHeaderText();
        }
        if (i == 3) {
            return headersFooters.getFooterText();
        }
        if (i != 4) {
            return null;
        }
        return headersFooters.getDateTimeText();
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public boolean isVisible() {
        Placeholder placeholder = getPlaceholder();
        if (placeholder == null) {
            return false;
        }
        HeadersFooters headersFooters = this.sheet.getHeadersFooters();
        int i = C194611.$SwitchMap$org$apache$poi$sl$usermodel$Placeholder[placeholder.ordinal()];
        if (i == 1 || i == 2) {
            return headersFooters.isHeaderVisible();
        }
        if (i == 3) {
            return headersFooters.isFooterVisible();
        }
        if (i == 4) {
            return headersFooters.isDateTimeVisible();
        }
        if (i != 5) {
            return false;
        }
        return headersFooters.isSlideNumberVisible();
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public void setPlaceholder(Placeholder placeholder) {
        throw new UnsupportedOperationException("Only sub class(es) of HSLFPlaceholderDetails allow setting the placeholder");
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public void setSize(PlaceholderDetails.PlaceholderSize placeholderSize) {
        throw new UnsupportedOperationException("Only sub class(es) of HSLFPlaceholderDetails allow setting the size");
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public void setText(String str) {
        Placeholder placeholder = getPlaceholder();
        if (placeholder == null) {
            return;
        }
        HeadersFooters headersFooters = this.sheet.getHeadersFooters();
        int i = C194611.$SwitchMap$org$apache$poi$sl$usermodel$Placeholder[placeholder.ordinal()];
        if (i == 1 || i == 2) {
            headersFooters.setHeaderText(str);
        } else if (i == 3) {
            headersFooters.setFootersText(str);
        } else {
            if (i != 4) {
                return;
            }
            headersFooters.setDateTimeText(str);
        }
    }

    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public void setVisible(boolean z) {
        Placeholder placeholder = getPlaceholder();
        if (placeholder == null) {
            return;
        }
        HeadersFooters headersFooters = this.sheet.getHeadersFooters();
        int i = C194611.$SwitchMap$org$apache$poi$sl$usermodel$Placeholder[placeholder.ordinal()];
        if (i == 1 || i == 2) {
            headersFooters.setHeaderVisible(z);
            return;
        }
        if (i == 3) {
            headersFooters.setFooterVisible(z);
        } else if (i == 4) {
            headersFooters.setDateTimeVisible(z);
        } else {
            if (i != 5) {
                return;
            }
            headersFooters.setSlideNumberVisible(z);
        }
    }
}
