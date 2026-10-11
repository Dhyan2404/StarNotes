.class public Lnet/sf/saxon/Configuration$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ActiveSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/Configuration;->resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljavax/xml/transform/Source;

.field public final synthetic f:Lnet/sf/saxon/Configuration;

.field public final synthetic g:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration$a;->g:Lnet/sf/saxon/Configuration;

    iput-object p2, p0, Lnet/sf/saxon/Configuration$a;->e:Ljavax/xml/transform/Source;

    iput-object p3, p0, Lnet/sf/saxon/Configuration$a;->f:Lnet/sf/saxon/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/Configuration$a;->e:Ljavax/xml/transform/Source;

    check-cast v0, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {v0}, Lnet/sf/saxon/lib/AugmentedSource;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/lib/ParseOptions;->merge(Lnet/sf/saxon/lib/ParseOptions;)V

    iget-object v0, p0, Lnet/sf/saxon/Configuration$a;->g:Lnet/sf/saxon/Configuration;

    iget-object v1, p0, Lnet/sf/saxon/Configuration$a;->e:Ljavax/xml/transform/Source;

    check-cast v1, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {v1}, Lnet/sf/saxon/lib/AugmentedSource;->getContainedSource()Ljavax/xml/transform/Source;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/Configuration$a;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/Configuration;->resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/lib/ActiveSource;->deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    return-void
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration$a;->e:Ljavax/xml/transform/Source;

    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration$a;->e:Ljavax/xml/transform/Source;

    invoke-interface {p0, p1}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V

    return-void
.end method
