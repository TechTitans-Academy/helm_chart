{{- define "dinner-app.name" -}}
{{- .Chart.Name -}}
{{- end }}


{{- define "dinner-app.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name -}}
{{- end }}
