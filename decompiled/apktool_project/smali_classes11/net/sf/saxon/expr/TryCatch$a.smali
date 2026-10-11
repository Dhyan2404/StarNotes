.class public Lnet/sf/saxon/expr/TryCatch$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ErrorReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/TryCatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/lib/ErrorReporter;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/TryCatch$CatchClause;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/ErrorReporter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/lib/ErrorReporter;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/TryCatch$CatchClause;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/TryCatch$a;->e:Lnet/sf/saxon/lib/ErrorReporter;

    iput-object p2, p0, Lnet/sf/saxon/expr/TryCatch$a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/s9api/XmlProcessingError;)Z
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getErrorCode()Lnet/sf/saxon/s9api/QName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch$a;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/TryCatch$CatchClause;

    iget-object v0, v0, Lnet/sf/saxon/expr/TryCatch$CatchClause;->nameTest:Lnet/sf/saxon/pattern/QNameTest;

    invoke-interface {v0, p1}, Lnet/sf/saxon/pattern/QNameTest;->matches(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public report(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->isWarning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/TryCatch$a;->a(Lnet/sf/saxon/s9api/XmlProcessingError;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch$a;->e:Lnet/sf/saxon/lib/ErrorReporter;

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    :cond_1
    return-void
.end method
