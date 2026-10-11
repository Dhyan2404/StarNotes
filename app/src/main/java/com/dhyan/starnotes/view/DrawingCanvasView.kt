package com.dhyan.starnotes.view

import android.content.Context
import android.graphics.*
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import org.json.JSONArray
import org.json.JSONObject

class DrawingCanvasView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : View(context, attrs, defStyleAttr) {

    data class StrokePath(
        val path: Path,
        val color: Int,
        val strokeWidth: Float,
        val isEraser: Boolean = false,
        val points: MutableList<PointF> = mutableListOf()
    )

    private val paths = mutableListOf<StrokePath>()
    private var currentPath: Path? = null
    private var currentPoints = mutableListOf<PointF>()
    private var currentColor = Color.BLACK
    private var currentStrokeWidth = 8f
    private var isEraserMode = false

    private val paint = Paint().apply {
        isAntiAlias = true
        isDither = true
        style = Paint.Style.STROKE
        strokeJoin = Paint.Join.ROUND
        strokeCap = Paint.Cap.ROUND
    }

    fun setPenColor(color: Int) {
        currentColor = color
        isEraserMode = false
    }

    fun setStrokeWidth(width: Float) {
        currentStrokeWidth = width
    }

    fun setEraserMode(enabled: Boolean) {
        isEraserMode = enabled
    }

    fun clearCanvas() {
        paths.clear()
        invalidate()
    }

    fun undo() {
        if (paths.isNotEmpty()) {
            paths.removeAt(paths.size - 1)
            invalidate()
        }
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        canvas.drawColor(Color.WHITE)

        for (stroke in paths) {
            paint.color = stroke.color
            paint.strokeWidth = stroke.strokeWidth
            if (stroke.isEraser) {
                paint.color = Color.WHITE
            }
            canvas.drawPath(stroke.path, paint)
        }

        currentPath?.let {
            paint.color = if (isEraserMode) Color.WHITE else currentColor
            paint.strokeWidth = currentStrokeWidth
            canvas.drawPath(it, paint)
        }
    }

    override fun onTouchEvent(event: MotionEvent): Boolean {
        val x = event.x
        val y = event.y

        when (event.action) {
            MotionEvent.ACTION_DOWN -> {
                val path = Path().apply { moveTo(x, y) }
                currentPath = path
                currentPoints = mutableListOf(PointF(x, y))
                invalidate()
                return true
            }
            MotionEvent.ACTION_MOVE -> {
                currentPath?.lineTo(x, y)
                currentPoints.add(PointF(x, y))
                invalidate()
                return true
            }
            MotionEvent.ACTION_UP -> {
                currentPath?.let {
                    paths.add(StrokePath(it, currentColor, currentStrokeWidth, isEraserMode, currentPoints))
                }
                currentPath = null
                invalidate()
                return true
            }
        }
        return super.onTouchEvent(event)
    }

    fun serializeDrawing(): String {
        val root = JSONArray()
        for (stroke in paths) {
            val strokeObj = JSONObject().apply {
                put("color", stroke.color)
                put("width", stroke.strokeWidth.toDouble())
                put("isEraser", stroke.isEraser)
                val pts = JSONArray()
                for (p in stroke.points) {
                    val ptObj = JSONObject().apply {
                        put("x", p.x.toDouble())
                        put("y", p.y.toDouble())
                    }
                    pts.put(ptObj)
                }
                put("points", pts)
            }
            root.put(strokeObj)
        }
        return root.toString()
    }

    fun deserializeDrawing(jsonString: String) {
        paths.clear()
        try {
            val root = JSONArray(jsonString)
            for (i in 0 until root.length()) {
                val strokeObj = root.getJSONObject(i)
                val color = strokeObj.getInt("color")
                val width = strokeObj.getDouble("width").toFloat()
                val isEraser = strokeObj.optBoolean("isEraser", false)
                val ptsArray = strokeObj.getJSONArray("points")

                if (ptsArray.length() > 0) {
                    val path = Path()
                    val points = mutableListOf<PointF>()
                    val first = ptsArray.getJSONObject(0)
                    val fx = first.getDouble("x").toFloat()
                    val fy = first.getDouble("y").toFloat()
                    path.moveTo(fx, fy)
                    points.add(PointF(fx, fy))

                    for (j in 1 until ptsArray.length()) {
                        val pt = ptsArray.getJSONObject(j)
                        val px = pt.getDouble("x").toFloat()
                        val py = pt.getDouble("y").toFloat()
                        path.lineTo(px, py)
                        points.add(PointF(px, py))
                    }
                    paths.add(StrokePath(path, color, width, isEraser, points))
                }
            }
            invalidate()
        } catch (_: Exception) {}
    }
}
