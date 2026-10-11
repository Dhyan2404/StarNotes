.class public final synthetic Lcom/sunia/HTREnginev2/r9l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/output/ProxyWriter;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/output/ProxyWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r9l;->a:Lonyx/org/apache/commons/io/output/ProxyWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r9l;->a:Lonyx/org/apache/commons/io/output/ProxyWriter;

    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    return-void
.end method
