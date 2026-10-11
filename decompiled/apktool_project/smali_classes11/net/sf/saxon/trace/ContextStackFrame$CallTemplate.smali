.class public Lnet/sf/saxon/trace/ContextStackFrame$CallTemplate;
.super Lnet/sf/saxon/trace/ContextStackFrame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/trace/ContextStackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallTemplate"
.end annotation


# instance fields
.field public d:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/trace/ContextStackFrame;-><init>()V

    return-void
.end method


# virtual methods
.method public getTemplateName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/ContextStackFrame$CallTemplate;->d:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public print(Lnet/sf/saxon/lib/Logger;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/trace/ContextStackFrame$CallTemplate;->d:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_0

    const-string v0, "??"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  at xsl:call-template name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trace/ContextStackFrame;->showLocation()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public setTemplateName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trace/ContextStackFrame$CallTemplate;->d:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method
