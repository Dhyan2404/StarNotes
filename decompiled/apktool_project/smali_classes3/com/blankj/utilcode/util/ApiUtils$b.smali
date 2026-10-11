.class public Lcom/blankj/utilcode/util/ApiUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ApiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/blankj/utilcode/util/ApiUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blankj/utilcode/util/ApiUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/ApiUtils;-><init>(Lcom/blankj/utilcode/util/ApiUtils$a;)V

    sput-object v0, Lcom/blankj/utilcode/util/ApiUtils$b;->a:Lcom/blankj/utilcode/util/ApiUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/blankj/utilcode/util/ApiUtils;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/ApiUtils$b;->a:Lcom/blankj/utilcode/util/ApiUtils;

    return-object v0
.end method
