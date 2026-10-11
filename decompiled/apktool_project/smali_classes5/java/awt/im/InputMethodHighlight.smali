.class public Ljava/awt/im/InputMethodHighlight;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONVERTED_TEXT:I = 0x1

.field public static final RAW_TEXT:I

.field public static final SELECTED_CONVERTED_TEXT_HIGHLIGHT:Ljava/awt/im/InputMethodHighlight;

.field public static final SELECTED_RAW_TEXT_HIGHLIGHT:Ljava/awt/im/InputMethodHighlight;

.field public static final UNSELECTED_CONVERTED_TEXT_HIGHLIGHT:Ljava/awt/im/InputMethodHighlight;

.field public static final UNSELECTED_RAW_TEXT_HIGHLIGHT:Ljava/awt/im/InputMethodHighlight;


# instance fields
.field private selected:Z

.field private state:I

.field private style:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/awt/font/TextAttribute;",
            "*>;"
        }
    .end annotation
.end field

.field private variation:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/awt/im/InputMethodHighlight;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/awt/im/InputMethodHighlight;-><init>(ZI)V

    sput-object v0, Ljava/awt/im/InputMethodHighlight;->UNSELECTED_RAW_TEXT_HIGHLIGHT:Ljava/awt/im/InputMethodHighlight;

    new-instance v0, Ljava/awt/im/InputMethodHighlight;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/awt/im/InputMethodHighlight;-><init>(ZI)V

    sput-object v0, Ljava/awt/im/InputMethodHighlight;->SELECTED_RAW_TEXT_HIGHLIGHT:Ljava/awt/im/InputMethodHighlight;

    new-instance v0, Ljava/awt/im/InputMethodHighlight;

    invoke-direct {v0, v1, v2}, Ljava/awt/im/InputMethodHighlight;-><init>(ZI)V

    sput-object v0, Ljava/awt/im/InputMethodHighlight;->UNSELECTED_CONVERTED_TEXT_HIGHLIGHT:Ljava/awt/im/InputMethodHighlight;

    new-instance v0, Ljava/awt/im/InputMethodHighlight;

    invoke-direct {v0, v2, v2}, Ljava/awt/im/InputMethodHighlight;-><init>(ZI)V

    sput-object v0, Ljava/awt/im/InputMethodHighlight;->SELECTED_CONVERTED_TEXT_HIGHLIGHT:Ljava/awt/im/InputMethodHighlight;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/awt/im/InputMethodHighlight;-><init>(ZIILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/im/InputMethodHighlight;-><init>(ZIILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(ZIILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/Map<",
            "Ljava/awt/font/TextAttribute;",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Ljava/awt/im/InputMethodHighlight;->selected:Z

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown input method highlight state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    iput p2, p0, Ljava/awt/im/InputMethodHighlight;->state:I

    .line 7
    iput p3, p0, Ljava/awt/im/InputMethodHighlight;->variation:I

    .line 8
    iput-object p4, p0, Ljava/awt/im/InputMethodHighlight;->style:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 0

    iget p0, p0, Ljava/awt/im/InputMethodHighlight;->state:I

    return p0
.end method

.method public getStyle()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/awt/font/TextAttribute;",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Ljava/awt/im/InputMethodHighlight;->style:Ljava/util/Map;

    return-object p0
.end method

.method public getVariation()I
    .locals 0

    iget p0, p0, Ljava/awt/im/InputMethodHighlight;->variation:I

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Ljava/awt/im/InputMethodHighlight;->selected:Z

    return p0
.end method
