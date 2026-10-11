.class public Lcom/miui/penengine/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/penengine/d/a;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:J

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:I

.field public final h:Z


# direct methods
.method public constructor <init>(FFJFFFIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/penengine/d/b;->a:F

    iput p2, p0, Lcom/miui/penengine/d/b;->b:F

    iput-wide p3, p0, Lcom/miui/penengine/d/b;->c:J

    iput p5, p0, Lcom/miui/penengine/d/b;->d:F

    iput p6, p0, Lcom/miui/penengine/d/b;->e:F

    iput p7, p0, Lcom/miui/penengine/d/b;->f:F

    iput p8, p0, Lcom/miui/penengine/d/b;->g:I

    iput-boolean p9, p0, Lcom/miui/penengine/d/b;->h:Z

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    iget p0, p0, Lcom/miui/penengine/d/b;->a:F

    return p0
.end method

.method public b()F
    .locals 0

    iget p0, p0, Lcom/miui/penengine/d/b;->d:F

    return p0
.end method

.method public c()F
    .locals 0

    iget p0, p0, Lcom/miui/penengine/d/b;->f:F

    return p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/penengine/d/b;->h:Z

    return p0
.end method

.method public e()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public f()F
    .locals 0

    iget p0, p0, Lcom/miui/penengine/d/b;->b:F

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/miui/penengine/d/b;->g:I

    return p0
.end method

.method public h()F
    .locals 0

    iget p0, p0, Lcom/miui/penengine/d/b;->e:F

    return p0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/penengine/d/b;->c:J

    return-wide v0
.end method
