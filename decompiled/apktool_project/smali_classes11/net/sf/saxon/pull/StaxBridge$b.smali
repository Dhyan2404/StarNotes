.class public Lnet/sf/saxon/pull/StaxBridge$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/XMLReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/pull/StaxBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lnet/sf/saxon/pull/StaxBridge;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pull/StaxBridge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/saxon/pull/StaxBridge$b;->a:Lnet/sf/saxon/pull/StaxBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/pull/StaxBridge;Lnet/sf/saxon/pull/StaxBridge$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/sf/saxon/pull/StaxBridge$b;-><init>(Lnet/sf/saxon/pull/StaxBridge;)V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/stream/Location;)V
    .locals 2

    new-instance p3, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reported by XML parser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/pull/StaxBridge$b;->a:Lnet/sf/saxon/pull/StaxBridge;

    invoke-static {p1, p4}, Lnet/sf/saxon/pull/StaxBridge;->a(Lnet/sf/saxon/pull/StaxBridge;Ljavax/xml/stream/Location;)Lnet/sf/saxon/expr/parser/Loc;

    move-result-object p1

    invoke-virtual {p3, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge$b;->a:Lnet/sf/saxon/pull/StaxBridge;

    invoke-static {p0}, Lnet/sf/saxon/pull/StaxBridge;->b(Lnet/sf/saxon/pull/StaxBridge;)Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    invoke-interface {p0, p3}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method
