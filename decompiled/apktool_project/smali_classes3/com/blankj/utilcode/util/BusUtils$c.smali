.class public Lcom/blankj/utilcode/util/BusUtils$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/BusUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/blankj/utilcode/util/BusUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/BusUtils;-><init>(Lcom/blankj/utilcode/util/BusUtils$a;)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$c;->a:Lcom/blankj/utilcode/util/BusUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/blankj/utilcode/util/BusUtils;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/BusUtils$c;->a:Lcom/blankj/utilcode/util/BusUtils;

    return-object v0
.end method
