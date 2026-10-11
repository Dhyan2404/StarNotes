.class public Lcom/sunia/HTREnginev2/xll$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/xll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/sunia/HTREnginev2/xll;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/xll;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/xll;-><init>(Lcom/sunia/HTREnginev2/xll$a;)V

    sput-object v0, Lcom/sunia/HTREnginev2/xll$b;->a:Lcom/sunia/HTREnginev2/xll;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sunia/HTREnginev2/xll;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/xll$b;->a:Lcom/sunia/HTREnginev2/xll;

    return-object v0
.end method
