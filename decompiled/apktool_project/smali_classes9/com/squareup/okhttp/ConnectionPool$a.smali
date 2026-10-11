.class public Lcom/squareup/okhttp/ConnectionPool$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/squareup/okhttp/ConnectionPool;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/ConnectionPool;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/ConnectionPool$a;->e:Lcom/squareup/okhttp/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/ConnectionPool$a;->e:Lcom/squareup/okhttp/ConnectionPool;

    invoke-static {p0}, Lcom/squareup/okhttp/ConnectionPool;->a(Lcom/squareup/okhttp/ConnectionPool;)V

    return-void
.end method
