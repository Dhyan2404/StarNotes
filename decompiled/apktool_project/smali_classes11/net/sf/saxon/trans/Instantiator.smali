.class public Lnet/sf/saxon/trans/Instantiator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/Maker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/trans/Maker<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/Instantiator;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/trans/Instantiator;->b:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public make()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/Instantiator;->b:Lnet/sf/saxon/Configuration;

    iget-object p0, p0, Lnet/sf/saxon/trans/Instantiator;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
