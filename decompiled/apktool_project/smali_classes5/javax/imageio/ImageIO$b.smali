.class public Ljavax/imageio/ImageIO$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/ImageIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/io/File;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/imageio/ImageIO$b;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/ImageIO$b;->b:Ljava/io/File;

    iput-object v0, p0, Ljavax/imageio/ImageIO$b;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageIO$b;->b:Ljava/io/File;

    return-object p0
.end method

.method public b()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageIO$b;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/ImageIO$b;->a:Z

    return p0
.end method

.method public d(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/ImageIO$b;->b:Ljava/io/File;

    return-void
.end method

.method public e(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/ImageIO$b;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Ljavax/imageio/ImageIO$b;->a:Z

    return-void
.end method
