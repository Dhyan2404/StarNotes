.class public Lcom/tencent/qimei/s/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/sdk/debug/IDebugger;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qimei/s/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public requestQm()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    return-void
.end method

.method public requestStrategy()V
    .locals 0

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    sput-boolean p1, Lcom/tencent/qimei/m/b;->a:Z

    return-void
.end method
