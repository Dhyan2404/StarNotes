.class public final synthetic Lcom/sunia/HTREnginev2/yhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Ljava/time/Instant;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/time/Instant;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yhg;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yhg;->b:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yhg;->a:Ljava/io/File;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yhg;->b:Ljava/time/Instant;

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/FileUtils;->b(Ljava/io/File;Ljava/time/Instant;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
