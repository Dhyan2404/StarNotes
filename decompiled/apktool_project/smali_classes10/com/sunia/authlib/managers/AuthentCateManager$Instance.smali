.class Lcom/sunia/authlib/managers/AuthentCateManager$Instance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/authlib/managers/AuthentCateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation


# static fields
.field protected static instance:Lcom/sunia/authlib/managers/AuthentCateManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sunia/authlib/managers/AuthentCateManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sunia/authlib/managers/AuthentCateManager;-><init>(Lcom/sunia/authlib/managers/AuthentCateManager$1;)V

    sput-object v0, Lcom/sunia/authlib/managers/AuthentCateManager$Instance;->instance:Lcom/sunia/authlib/managers/AuthentCateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
