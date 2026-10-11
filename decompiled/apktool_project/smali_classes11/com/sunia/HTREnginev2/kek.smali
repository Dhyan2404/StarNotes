.class public final synthetic Lcom/sunia/HTREnginev2/kek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kek;->a:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kek;->a:Ljava/io/IOException;

    check-cast p1, Lonyx/org/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/input/ObservableInputStream;->f(Ljava/io/IOException;Lonyx/org/apache/commons/io/input/ObservableInputStream$Observer;)V

    return-void
.end method
