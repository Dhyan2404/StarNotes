.class public Lcom/onyx/common/util/ContextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/onyx/common/util/ContextUtils;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static initContext(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/onyx/common/util/ContextUtils;->context:Landroid/content/Context;

    return-void
.end method
