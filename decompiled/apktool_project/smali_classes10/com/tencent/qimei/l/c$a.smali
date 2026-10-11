.class public Lcom/tencent/qimei/l/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qimei/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/tencent/qimei/l/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/qimei/l/c;

    invoke-direct {v0}, Lcom/tencent/qimei/l/c;-><init>()V

    sput-object v0, Lcom/tencent/qimei/l/c$a;->a:Lcom/tencent/qimei/l/c;

    return-void
.end method
