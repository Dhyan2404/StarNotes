.class public final Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_ISOMETRIC_BOTTOM_DOWN:I = 0x17

.field static final INT_ISOMETRIC_BOTTOM_UP:I = 0x16

.field static final INT_ISOMETRIC_LEFT_DOWN:I = 0x19

.field static final INT_ISOMETRIC_LEFT_UP:I = 0x18

.field static final INT_ISOMETRIC_OFF_AXIS_1_LEFT:I = 0x1c

.field static final INT_ISOMETRIC_OFF_AXIS_1_RIGHT:I = 0x1d

.field static final INT_ISOMETRIC_OFF_AXIS_1_TOP:I = 0x1e

.field static final INT_ISOMETRIC_OFF_AXIS_2_LEFT:I = 0x1f

.field static final INT_ISOMETRIC_OFF_AXIS_2_RIGHT:I = 0x20

.field static final INT_ISOMETRIC_OFF_AXIS_2_TOP:I = 0x21

.field static final INT_ISOMETRIC_OFF_AXIS_3_BOTTOM:I = 0x24

.field static final INT_ISOMETRIC_OFF_AXIS_3_LEFT:I = 0x22

.field static final INT_ISOMETRIC_OFF_AXIS_3_RIGHT:I = 0x23

.field static final INT_ISOMETRIC_OFF_AXIS_4_BOTTOM:I = 0x27

.field static final INT_ISOMETRIC_OFF_AXIS_4_LEFT:I = 0x25

.field static final INT_ISOMETRIC_OFF_AXIS_4_RIGHT:I = 0x26

.field static final INT_ISOMETRIC_RIGHT_DOWN:I = 0x1b

.field static final INT_ISOMETRIC_RIGHT_UP:I = 0x1a

.field static final INT_ISOMETRIC_TOP_DOWN:I = 0x15

.field static final INT_ISOMETRIC_TOP_UP:I = 0x14

.field static final INT_LEGACY_OBLIQUE_BOTTOM:I = 0x8

.field static final INT_LEGACY_OBLIQUE_BOTTOM_LEFT:I = 0x7

.field static final INT_LEGACY_OBLIQUE_BOTTOM_RIGHT:I = 0x9

.field static final INT_LEGACY_OBLIQUE_FRONT:I = 0x5

.field static final INT_LEGACY_OBLIQUE_LEFT:I = 0x4

.field static final INT_LEGACY_OBLIQUE_RIGHT:I = 0x6

.field static final INT_LEGACY_OBLIQUE_TOP:I = 0x2

.field static final INT_LEGACY_OBLIQUE_TOP_LEFT:I = 0x1

.field static final INT_LEGACY_OBLIQUE_TOP_RIGHT:I = 0x3

.field static final INT_LEGACY_PERSPECTIVE_BOTTOM:I = 0x11

.field static final INT_LEGACY_PERSPECTIVE_BOTTOM_LEFT:I = 0x10

.field static final INT_LEGACY_PERSPECTIVE_BOTTOM_RIGHT:I = 0x12

.field static final INT_LEGACY_PERSPECTIVE_FRONT:I = 0xe

.field static final INT_LEGACY_PERSPECTIVE_LEFT:I = 0xd

.field static final INT_LEGACY_PERSPECTIVE_RIGHT:I = 0xf

.field static final INT_LEGACY_PERSPECTIVE_TOP:I = 0xb

.field static final INT_LEGACY_PERSPECTIVE_TOP_LEFT:I = 0xa

.field static final INT_LEGACY_PERSPECTIVE_TOP_RIGHT:I = 0xc

.field static final INT_OBLIQUE_BOTTOM:I = 0x2e

.field static final INT_OBLIQUE_BOTTOM_LEFT:I = 0x2d

.field static final INT_OBLIQUE_BOTTOM_RIGHT:I = 0x2f

.field static final INT_OBLIQUE_LEFT:I = 0x2b

.field static final INT_OBLIQUE_RIGHT:I = 0x2c

.field static final INT_OBLIQUE_TOP:I = 0x29

.field static final INT_OBLIQUE_TOP_LEFT:I = 0x28

.field static final INT_OBLIQUE_TOP_RIGHT:I = 0x2a

.field static final INT_ORTHOGRAPHIC_FRONT:I = 0x13

.field static final INT_PERSPECTIVE_ABOVE:I = 0x33

.field static final INT_PERSPECTIVE_ABOVE_LEFT_FACING:I = 0x35

.field static final INT_PERSPECTIVE_ABOVE_RIGHT_FACING:I = 0x36

.field static final INT_PERSPECTIVE_BELOW:I = 0x34

.field static final INT_PERSPECTIVE_CONTRASTING_LEFT_FACING:I = 0x37

.field static final INT_PERSPECTIVE_CONTRASTING_RIGHT_FACING:I = 0x38

.field static final INT_PERSPECTIVE_FRONT:I = 0x30

.field static final INT_PERSPECTIVE_HEROIC_EXTREME_LEFT_FACING:I = 0x3b

.field static final INT_PERSPECTIVE_HEROIC_EXTREME_RIGHT_FACING:I = 0x3c

.field static final INT_PERSPECTIVE_HEROIC_LEFT_FACING:I = 0x39

.field static final INT_PERSPECTIVE_HEROIC_RIGHT_FACING:I = 0x3a

.field static final INT_PERSPECTIVE_LEFT:I = 0x31

.field static final INT_PERSPECTIVE_RELAXED:I = 0x3d

.field static final INT_PERSPECTIVE_RELAXED_MODERATELY:I = 0x3e

.field static final INT_PERSPECTIVE_RIGHT:I = 0x32

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 66

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v1, v2

    const-string v3, "legacyObliqueTopLeft"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v2, v3

    const-string v4, "legacyObliqueTop"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v3, v4

    const-string v5, "legacyObliqueTopRight"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v4, v5

    const-string v6, "legacyObliqueLeft"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v5, v6

    const-string v7, "legacyObliqueFront"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v6, v7

    const-string v8, "legacyObliqueRight"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v7, v8

    const-string v9, "legacyObliqueBottomLeft"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v8, v9

    const-string v10, "legacyObliqueBottom"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v9, v10

    const-string v11, "legacyObliqueBottomRight"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v10, v11

    const-string v12, "legacyPerspectiveTopLeft"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v11, v12

    const-string v13, "legacyPerspectiveTop"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v12, v13

    const-string v14, "legacyPerspectiveTopRight"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v13, v14

    const-string v15, "legacyPerspectiveLeft"

    move-object/from16 v63, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v14, v0

    const-string v15, "legacyPerspectiveFront"

    move-object/from16 v64, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object v15, v0

    const-string v1, "legacyPerspectiveRight"

    move-object/from16 v65, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v16, v0

    const-string v1, "legacyPerspectiveBottomLeft"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v17, v0

    const-string v1, "legacyPerspectiveBottom"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v18, v0

    const-string v1, "legacyPerspectiveBottomRight"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v19, v0

    const-string v1, "orthographicFront"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v20, v0

    const-string v1, "isometricTopUp"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v21, v0

    const-string v1, "isometricTopDown"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v22, v0

    const-string v1, "isometricBottomUp"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v23, v0

    const-string v1, "isometricBottomDown"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v24, v0

    const-string v1, "isometricLeftUp"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v25, v0

    const-string v1, "isometricLeftDown"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v26, v0

    const-string v1, "isometricRightUp"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v27, v0

    const-string v1, "isometricRightDown"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v28, v0

    const-string v1, "isometricOffAxis1Left"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v29, v0

    const-string v1, "isometricOffAxis1Right"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v30, v0

    const-string v1, "isometricOffAxis1Top"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v31, v0

    const-string v1, "isometricOffAxis2Left"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v32, v0

    const-string v1, "isometricOffAxis2Right"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v33, v0

    const-string v1, "isometricOffAxis2Top"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v34, v0

    const-string v1, "isometricOffAxis3Left"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v35, v0

    const-string v1, "isometricOffAxis3Right"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v36, v0

    const-string v1, "isometricOffAxis3Bottom"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v37, v0

    const-string v1, "isometricOffAxis4Left"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v38, v0

    const-string v1, "isometricOffAxis4Right"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v39, v0

    const-string v1, "isometricOffAxis4Bottom"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v40, v0

    const-string v1, "obliqueTopLeft"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v41, v0

    const-string v1, "obliqueTop"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v42, v0

    const-string v1, "obliqueTopRight"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v43, v0

    const-string v1, "obliqueLeft"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v44, v0

    const-string v1, "obliqueRight"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v45, v0

    const-string v1, "obliqueBottomLeft"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v46, v0

    const-string v1, "obliqueBottom"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v47, v0

    const-string v1, "obliqueBottomRight"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v48, v0

    const-string v1, "perspectiveFront"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v49, v0

    const-string v1, "perspectiveLeft"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v50, v0

    const-string v1, "perspectiveRight"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v51, v0

    const-string v1, "perspectiveAbove"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v52, v0

    const-string v1, "perspectiveBelow"

    const/16 v2, 0x34

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v53, v0

    const-string v1, "perspectiveAboveLeftFacing"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v54, v0

    const-string v1, "perspectiveAboveRightFacing"

    const/16 v2, 0x36

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v55, v0

    const-string v1, "perspectiveContrastingLeftFacing"

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v56, v0

    const-string v1, "perspectiveContrastingRightFacing"

    const/16 v2, 0x38

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v57, v0

    const-string v1, "perspectiveHeroicLeftFacing"

    const/16 v2, 0x39

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v58, v0

    const-string v1, "perspectiveHeroicRightFacing"

    const/16 v2, 0x3a

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v59, v0

    const-string v1, "perspectiveHeroicExtremeLeftFacing"

    const/16 v2, 0x3b

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v60, v0

    const-string v1, "perspectiveHeroicExtremeRightFacing"

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v61, v0

    const-string v1, "perspectiveRelaxed"

    const/16 v2, 0x3d

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-object/from16 v62, v0

    const-string v1, "perspectiveRelaxedModerately"

    const/16 v2, 0x3e

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;-><init>(Ljava/lang/String;I)V

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    filled-new-array/range {v1 .. v62}, [Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-result-object v0

    move-object/from16 v1, v63

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetCameraType$Enum;

    move-result-object p0

    return-object p0
.end method
