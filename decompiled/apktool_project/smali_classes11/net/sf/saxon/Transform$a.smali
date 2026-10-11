.class public Lnet/sf/saxon/Transform$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/Transform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/Transform;

.field public final f:Ljava/io/File;

.field public final g:Lnet/sf/saxon/s9api/XsltExecutable;

.field public final h:Lnet/sf/saxon/trans/CommandLineOptions;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/xml/transform/Source;",
            ">;"
        }
    .end annotation
.end field

.field public final j:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Transform;ILnet/sf/saxon/s9api/XsltExecutable;Ljava/util/List;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/Transform;",
            "I",
            "Lnet/sf/saxon/s9api/XsltExecutable;",
            "Ljava/util/List<",
            "Ljavax/xml/transform/Source;",
            ">;",
            "Ljava/io/File;",
            "Lnet/sf/saxon/trans/CommandLineOptions;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/Transform$a;->e:Lnet/sf/saxon/Transform;

    iput p2, p0, Lnet/sf/saxon/Transform$a;->j:I

    iput-object p3, p0, Lnet/sf/saxon/Transform$a;->g:Lnet/sf/saxon/s9api/XsltExecutable;

    iput-object p4, p0, Lnet/sf/saxon/Transform$a;->i:Ljava/util/List;

    iput-object p6, p0, Lnet/sf/saxon/Transform$a;->h:Lnet/sf/saxon/trans/CommandLineOptions;

    iput-object p5, p0, Lnet/sf/saxon/Transform$a;->f:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget p0, p0, Lnet/sf/saxon/Transform$a;->j:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/Transform$a;->e:Lnet/sf/saxon/Transform;

    iget-object v1, p0, Lnet/sf/saxon/Transform$a;->i:Ljava/util/List;

    iget-object v2, p0, Lnet/sf/saxon/Transform$a;->g:Lnet/sf/saxon/s9api/XsltExecutable;

    iget-object v3, p0, Lnet/sf/saxon/Transform$a;->f:Ljava/io/File;

    iget-object p0, p0, Lnet/sf/saxon/Transform$a;->h:Lnet/sf/saxon/trans/CommandLineOptions;

    invoke-static {v0, v1, v2, v3, p0}, Lnet/sf/saxon/Transform;->b(Lnet/sf/saxon/Transform;Ljava/util/List;Lnet/sf/saxon/s9api/XsltExecutable;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
