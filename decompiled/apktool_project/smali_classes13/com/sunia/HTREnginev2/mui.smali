.class public Lcom/sunia/HTREnginev2/mui;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Ljava/util/Hashtable;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/mui;->e:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/mui;->a:I

    iput v0, p0, Lcom/sunia/HTREnginev2/mui;->b:I

    iput v0, p0, Lcom/sunia/HTREnginev2/mui;->d:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/mui;
    .locals 2

    sget-object v0, Lcom/sunia/HTREnginev2/mui;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/mui;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sunia/HTREnginev2/mui;->e:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/mui;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/mui;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
.end method
