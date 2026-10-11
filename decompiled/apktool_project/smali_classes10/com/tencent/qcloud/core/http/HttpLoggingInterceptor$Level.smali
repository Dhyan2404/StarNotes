.class public final enum Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

.field public static final enum BASIC:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

.field public static final enum BODY:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

.field public static final enum HEADERS:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

.field public static final enum NONE:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;->NONE:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    new-instance v1, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    const-string v2, "BASIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;->BASIC:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    new-instance v2, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    const-string v3, "HEADERS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;->HEADERS:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    new-instance v3, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    const-string v4, "BODY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;->BODY:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    filled-new-array {v0, v1, v2, v3}, [Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    move-result-object v0

    sput-object v0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;
    .locals 1

    const-class v0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;
    .locals 1

    sget-object v0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    return-object v0
.end method
