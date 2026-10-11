.class Lsun/font/FontDesignMetrics$MetricsKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/FontDesignMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetricsKey"
.end annotation


# static fields
.field static final key:Lsun/font/FontDesignMetrics$MetricsKey;


# instance fields
.field font:Ljava/awt/Font;

.field frc:Ljava/awt/font/FontRenderContext;

.field hash:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/font/FontDesignMetrics$MetricsKey;

    invoke-direct {v0}, Lsun/font/FontDesignMetrics$MetricsKey;-><init>()V

    sput-object v0, Lsun/font/FontDesignMetrics$MetricsKey;->key:Lsun/font/FontDesignMetrics$MetricsKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lsun/font/FontDesignMetrics$MetricsKey;->init(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lsun/font/FontDesignMetrics$MetricsKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lsun/font/FontDesignMetrics$MetricsKey;->font:Ljava/awt/Font;

    check-cast p1, Lsun/font/FontDesignMetrics$MetricsKey;

    iget-object v2, p1, Lsun/font/FontDesignMetrics$MetricsKey;->font:Ljava/awt/Font;

    invoke-virtual {v0, v2}, Ljava/awt/Font;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lsun/font/FontDesignMetrics$MetricsKey;->frc:Ljava/awt/font/FontRenderContext;

    iget-object p1, p1, Lsun/font/FontDesignMetrics$MetricsKey;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {p0, p1}, Ljava/awt/font/FontRenderContext;->equals(Ljava/awt/font/FontRenderContext;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lsun/font/FontDesignMetrics$MetricsKey;->hash:I

    return p0
.end method

.method public init(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V
    .locals 0

    iput-object p1, p0, Lsun/font/FontDesignMetrics$MetricsKey;->font:Ljava/awt/Font;

    iput-object p2, p0, Lsun/font/FontDesignMetrics$MetricsKey;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {p1}, Ljava/awt/Font;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/awt/font/FontRenderContext;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lsun/font/FontDesignMetrics$MetricsKey;->hash:I

    return-void
.end method
