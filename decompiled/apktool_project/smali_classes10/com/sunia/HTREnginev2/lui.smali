.class public final Lcom/sunia/HTREnginev2/lui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/color/ICC_Profile;[B)V
    .locals 0

    const-string p0, "profile"

    invoke-static {p1, p0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
