.class public final Landroidx/core/text/BidiFormatter$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Landroidx/core/text/TextDirectionHeuristicCompat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/BidiFormatter;->c(Ljava/util/Locale;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/text/BidiFormatter$Builder;->b(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->c(Ljava/util/Locale;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/text/BidiFormatter$Builder;->b(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/core/text/BidiFormatter$Builder;->b(Z)V

    return-void
.end method

.method public static a(Z)Landroidx/core/text/BidiFormatter;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/core/text/BidiFormatter;->p:Landroidx/core/text/BidiFormatter;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/core/text/BidiFormatter;->o:Landroidx/core/text/BidiFormatter;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/core/text/BidiFormatter$Builder;->a:Z

    sget-object p1, Landroidx/core/text/BidiFormatter;->d:Landroidx/core/text/TextDirectionHeuristicCompat;

    iput-object p1, p0, Landroidx/core/text/BidiFormatter$Builder;->c:Landroidx/core/text/TextDirectionHeuristicCompat;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/core/text/BidiFormatter$Builder;->b:I

    return-void
.end method

.method public build()Landroidx/core/text/BidiFormatter;
    .locals 3

    iget v0, p0, Landroidx/core/text/BidiFormatter$Builder;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/text/BidiFormatter$Builder;->c:Landroidx/core/text/TextDirectionHeuristicCompat;

    sget-object v1, Landroidx/core/text/BidiFormatter;->d:Landroidx/core/text/TextDirectionHeuristicCompat;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Landroidx/core/text/BidiFormatter$Builder;->a:Z

    invoke-static {p0}, Landroidx/core/text/BidiFormatter$Builder;->a(Z)Landroidx/core/text/BidiFormatter;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/core/text/BidiFormatter;

    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$Builder;->a:Z

    iget v2, p0, Landroidx/core/text/BidiFormatter$Builder;->b:I

    iget-object p0, p0, Landroidx/core/text/BidiFormatter$Builder;->c:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-direct {v0, v1, v2, p0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    return-object v0
.end method

.method public setTextDirectionHeuristic(Landroidx/core/text/TextDirectionHeuristicCompat;)Landroidx/core/text/BidiFormatter$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/core/text/BidiFormatter$Builder;->c:Landroidx/core/text/TextDirectionHeuristicCompat;

    return-object p0
.end method

.method public stereoReset(Z)Landroidx/core/text/BidiFormatter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/core/text/BidiFormatter$Builder;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/core/text/BidiFormatter$Builder;->b:I

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/core/text/BidiFormatter$Builder;->b:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Landroidx/core/text/BidiFormatter$Builder;->b:I

    :goto_0
    return-object p0
.end method
