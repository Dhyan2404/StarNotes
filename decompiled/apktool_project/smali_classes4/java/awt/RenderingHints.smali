.class public Ljava/awt/RenderingHints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/RenderingHints$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final KEY_ALPHA_INTERPOLATION:Ljava/awt/RenderingHints$Key;

.field public static final KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

.field public static final KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

.field public static final KEY_DITHERING:Ljava/awt/RenderingHints$Key;

.field public static final KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

.field public static final KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

.field public static final KEY_RENDERING:Ljava/awt/RenderingHints$Key;

.field public static final KEY_STROKE_CONTROL:Ljava/awt/RenderingHints$Key;

.field public static final KEY_TEXT_ANTIALIASING:Ljava/awt/RenderingHints$Key;

.field public static final KEY_TEXT_LCD_CONTRAST:Ljava/awt/RenderingHints$Key;

.field public static final VALUE_ALPHA_INTERPOLATION_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_ALPHA_INTERPOLATION_QUALITY:Ljava/lang/Object;

.field public static final VALUE_ALPHA_INTERPOLATION_SPEED:Ljava/lang/Object;

.field public static final VALUE_ANTIALIAS_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_ANTIALIAS_OFF:Ljava/lang/Object;

.field public static final VALUE_ANTIALIAS_ON:Ljava/lang/Object;

.field public static final VALUE_COLOR_RENDER_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

.field public static final VALUE_COLOR_RENDER_SPEED:Ljava/lang/Object;

.field public static final VALUE_DITHER_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_DITHER_DISABLE:Ljava/lang/Object;

.field public static final VALUE_DITHER_ENABLE:Ljava/lang/Object;

.field public static final VALUE_FRACTIONALMETRICS_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_FRACTIONALMETRICS_OFF:Ljava/lang/Object;

.field public static final VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

.field public static final VALUE_RENDER_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_RENDER_QUALITY:Ljava/lang/Object;

.field public static final VALUE_RENDER_SPEED:Ljava/lang/Object;

.field public static final VALUE_STROKE_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_STROKE_NORMALIZE:Ljava/lang/Object;

.field public static final VALUE_STROKE_PURE:Ljava/lang/Object;

.field public static final VALUE_TEXT_ANTIALIAS_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_TEXT_ANTIALIAS_GASP:Ljava/lang/Object;

.field public static final VALUE_TEXT_ANTIALIAS_LCD_HBGR:Ljava/lang/Object;

.field public static final VALUE_TEXT_ANTIALIAS_LCD_HRGB:Ljava/lang/Object;

.field public static final VALUE_TEXT_ANTIALIAS_LCD_VBGR:Ljava/lang/Object;

.field public static final VALUE_TEXT_ANTIALIAS_LCD_VRGB:Ljava/lang/Object;

.field public static final VALUE_TEXT_ANTIALIAS_OFF:Ljava/lang/Object;

.field public static final VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;


# instance fields
.field hintmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lsun/awt/SunHints;->KEY_ANTIALIASING:Lsun/awt/SunHints$Key;

    sput-object v0, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v0, Lsun/awt/SunHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_ANTIALIAS_OFF:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_OFF:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_ANTIALIAS_DEFAULT:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_DEFAULT:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->KEY_RENDERING:Lsun/awt/SunHints$Key;

    sput-object v0, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v0, Lsun/awt/SunHints;->VALUE_RENDER_SPEED:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_RENDER_SPEED:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_RENDER_DEFAULT:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_RENDER_DEFAULT:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->KEY_DITHERING:Lsun/awt/SunHints$Key;

    sput-object v0, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v0, Lsun/awt/SunHints;->VALUE_DITHER_DISABLE:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_DITHER_DISABLE:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_DITHER_DEFAULT:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_DITHER_DEFAULT:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->KEY_TEXT_ANTIALIASING:Lsun/awt/SunHints$Key;

    sput-object v0, Ljava/awt/RenderingHints;->KEY_TEXT_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_OFF:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_OFF:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_DEFAULT:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_DEFAULT:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_GASP:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_GASP:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_LCD_HRGB:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_LCD_HRGB:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_LCD_HBGR:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_LCD_HBGR:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_LCD_VRGB:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_LCD_VRGB:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_TEXT_ANTIALIAS_LCD_VBGR:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_LCD_VBGR:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->KEY_TEXT_ANTIALIAS_LCD_CONTRAST:Ljava/awt/RenderingHints$Key;

    sput-object v0, Ljava/awt/RenderingHints;->KEY_TEXT_LCD_CONTRAST:Ljava/awt/RenderingHints$Key;

    sget-object v0, Lsun/awt/SunHints;->KEY_FRACTIONALMETRICS:Lsun/awt/SunHints$Key;

    sput-object v0, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v0, Lsun/awt/SunHints;->VALUE_FRACTIONALMETRICS_OFF:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_OFF:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_FRACTIONALMETRICS_DEFAULT:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_DEFAULT:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->KEY_INTERPOLATION:Lsun/awt/SunHints$Key;

    sput-object v0, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v0, Lsun/awt/SunHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->KEY_ALPHA_INTERPOLATION:Lsun/awt/SunHints$Key;

    sput-object v0, Ljava/awt/RenderingHints;->KEY_ALPHA_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v0, Lsun/awt/SunHints;->VALUE_ALPHA_INTERPOLATION_SPEED:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_ALPHA_INTERPOLATION_SPEED:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_ALPHA_INTERPOLATION_QUALITY:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_ALPHA_INTERPOLATION_QUALITY:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_ALPHA_INTERPOLATION_DEFAULT:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_ALPHA_INTERPOLATION_DEFAULT:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->KEY_COLOR_RENDERING:Lsun/awt/SunHints$Key;

    sput-object v0, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v0, Lsun/awt/SunHints;->VALUE_COLOR_RENDER_SPEED:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_SPEED:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_COLOR_RENDER_DEFAULT:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_DEFAULT:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->KEY_STROKE_CONTROL:Lsun/awt/SunHints$Key;

    sput-object v0, Ljava/awt/RenderingHints;->KEY_STROKE_CONTROL:Ljava/awt/RenderingHints$Key;

    sget-object v0, Lsun/awt/SunHints;->VALUE_STROKE_DEFAULT:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_STROKE_DEFAULT:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_STROKE_NORMALIZE:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_STROKE_NORMALIZE:Ljava/lang/Object;

    sget-object v0, Lsun/awt/SunHints;->VALUE_STROKE_PURE:Ljava/lang/Object;

    sput-object v0, Ljava/awt/RenderingHints;->VALUE_STROKE_PURE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/awt/RenderingHints$Key;",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/awt/RenderingHints;)V
    .locals 0

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    iget-object p1, p1, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/RenderingHints;

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    iput-object p0, v0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/awt/InternalError;

    invoke-direct {v0, p0}, Ljava/awt/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    check-cast p1, Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/awt/RenderingHints;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    check-cast p1, Ljava/awt/RenderingHints;

    iget-object p1, p1, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    check-cast p1, Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Ljava/awt/RenderingHints$Key;

    invoke-virtual {v0, p2}, Ljava/awt/RenderingHints$Key;->isCompatibleValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " incompatible with "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const-class v0, Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    check-cast p1, Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/RenderingHints;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (0 hints)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public values()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ljava/awt/RenderingHints;->hintmap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
