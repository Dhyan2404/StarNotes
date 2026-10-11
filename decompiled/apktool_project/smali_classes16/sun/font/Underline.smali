.class abstract Lsun/font/Underline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/Underline$IMGrayUnderline;,
        Lsun/font/Underline$StandardUnderline;
    }
.end annotation


# static fields
.field private static final DEFAULT_THICKNESS:F = 1.0f

.field private static final IGNORE_THICKNESS:Z = false

.field private static final UNDERLINES:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lsun/font/Underline;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNDERLINE_LIST:[Lsun/font/Underline;

.field private static final USE_THICKNESS:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lsun/font/Underline;->UNDERLINES:Ljava/util/concurrent/ConcurrentHashMap;

    new-array v1, v1, [Lsun/font/Underline;

    new-instance v2, Lsun/font/Underline$StandardUnderline;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lsun/font/Underline$StandardUnderline;-><init>(FF[FZ)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v7, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    invoke-virtual {v0, v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lsun/font/Underline$StandardUnderline;

    invoke-direct {v2, v4, v4, v5, v3}, Lsun/font/Underline$StandardUnderline;-><init>(FF[FZ)V

    aput-object v2, v1, v6

    sget-object v6, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lsun/font/Underline$StandardUnderline;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v2, v4, v6, v5, v3}, Lsun/font/Underline$StandardUnderline;-><init>(FF[FZ)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v6, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lsun/font/Underline$StandardUnderline;

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-direct {v2, v4, v4, v6, v3}, Lsun/font/Underline$StandardUnderline;-><init>(FF[FZ)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v6, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lsun/font/Underline$IMGrayUnderline;

    invoke-direct {v2}, Lsun/font/Underline$IMGrayUnderline;-><init>()V

    const/4 v6, 0x4

    aput-object v2, v1, v6

    sget-object v6, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lsun/font/Underline$StandardUnderline;

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-direct {v2, v4, v4, v5, v3}, Lsun/font/Underline$StandardUnderline;-><init>(FF[FZ)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v3, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lsun/font/Underline;->UNDERLINE_LIST:[Lsun/font/Underline;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnderline(I)Lsun/font/Underline;
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lsun/font/Underline;->UNDERLINE_LIST:[Lsun/font/Underline;

    aget-object p0, v0, p0

    :goto_0
    return-object p0
.end method

.method public static getUnderline(Ljava/lang/Object;)Lsun/font/Underline;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lsun/font/Underline;->UNDERLINES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/font/Underline;

    return-object p0
.end method


# virtual methods
.method public abstract drawUnderline(Ljava/awt/Graphics2D;FFFF)V
.end method

.method public abstract getLowerDrawLimit(F)F
.end method

.method public abstract getUnderlineShape(FFFF)Ljava/awt/Shape;
.end method
