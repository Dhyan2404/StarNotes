.class public final synthetic Lcom/sunia/HTREnginev2/hin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$MethodHandler;


# instance fields
.field public final synthetic a:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hin;->a:[B

    return-void
.end method


# virtual methods
.method public final handle(Ljava/net/HttpURLConnection;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hin;->a:[B

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->c([BLjava/net/HttpURLConnection;)V

    return-void
.end method
