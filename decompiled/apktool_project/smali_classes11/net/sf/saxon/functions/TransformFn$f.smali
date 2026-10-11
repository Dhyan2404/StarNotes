.class public Lnet/sf/saxon/functions/TransformFn$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ErrorReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/TransformFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/XmlProcessingError;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lnet/sf/saxon/lib/ErrorReporter;


# direct methods
.method public constructor <init>(Ljava/util/List;Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/XmlProcessingError;",
            ">;",
            "Lnet/sf/saxon/lib/ErrorReporter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/TransformFn$f;->e:Ljava/util/List;

    iput-object p2, p0, Lnet/sf/saxon/functions/TransformFn$f;->f:Lnet/sf/saxon/lib/ErrorReporter;

    return-void
.end method


# virtual methods
.method public report(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->isWarning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/functions/TransformFn$f;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/functions/TransformFn$f;->f:Lnet/sf/saxon/lib/ErrorReporter;

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method
