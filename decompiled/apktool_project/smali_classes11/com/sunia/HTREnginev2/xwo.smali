.class public final synthetic Lcom/sunia/HTREnginev2/xwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ErrorReporter;


# instance fields
.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xwo;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final report(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xwo;->e:Ljava/util/List;

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/XsltCompiler;->a(Ljava/util/List;Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method
