.class public final synthetic Lcom/sunia/HTREnginev2/z4n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/a5n;

.field public final synthetic b:Ljavax/imageio/spi/RegisterableService;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/a5n;Ljavax/imageio/spi/RegisterableService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z4n;->a:Lcom/sunia/HTREnginev2/a5n;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/z4n;->b:Ljavax/imageio/spi/RegisterableService;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/z4n;->a:Lcom/sunia/HTREnginev2/a5n;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/z4n;->b:Ljavax/imageio/spi/RegisterableService;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/a5n;->a(Lcom/sunia/HTREnginev2/a5n;Ljavax/imageio/spi/RegisterableService;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
